import {Sequelize, DataTypes, Model} from 'sequelize'
import bodyParser from 'body-parser'
import express from 'express'
import fs from 'fs'
const app = express()
const port = 3000
import cors from 'cors'
app.use(cors())

app.listen(port, () => {
  console.log(`App listening on port ${port}`)
})
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

const sequelize = new Sequelize('postgres', 'postgres', 'vika3vika', {
  host: 'localhost',
  dialect: 'postgres'
});

async function createConnection() {
  try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
}
createConnection();

class Shops extends Model {}
Shops.init({
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  adress: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  title: {
    type: DataTypes.TEXT,
    allowNull: true
  },
}, {
   sequelize,
   createdAt: false,
   updatedAt: false,
   modelName: 'Shops'
});
Shops.sync()

class Meds extends Model {}
Meds.init({
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  price: {
    type: DataTypes.FLOAT,
    allowNull: false
  },
  available_qty: {
    type: DataTypes.BIGINT,
    allowNull: false
  },
  shop_id: {
    type: DataTypes.BIGINT,
    allowNull: false
  },
  img: {
    type: DataTypes.BLOB,
    allowNull: true
  },
  favorite: {
    type: DataTypes.BOOLEAN,
    allowNull: true
  },
}, {
   sequelize,
   createdAt: false,
   updatedAt: false,
   modelName: 'Meds'
});
const imageBinary = fs.readFileSync('./img/pills.png');
await Meds.update(
  { img: imageBinary},
  {
       where: {
      shop_id: 10,
    },
   },
);
Meds.sync()

class Customers extends Model {}
Customers.init({
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  adress: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  email: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  phone: {
    type: DataTypes.TEXT,
    allowNull: true
  },
}, {
   sequelize,
   createdAt: false,
   updatedAt: false,
   modelName: 'Customers'
});
Customers.sync()

class Cart extends Model {}
Cart.init({
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    primaryKey: true
  },
  name: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  shop: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  quantity: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  price: {
    type: DataTypes.FLOAT,
    allowNull: false
  },
}, {
   sequelize,
   createdAt: false,
   updatedAt: false,
   modelName: 'Cart'
});
Cart.sync()

class MedsToShops extends Model {}
MedsToShops.init({
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    primaryKey: true
  },
  med_Id: {
    type: DataTypes.BIGINT,
    allowNull: false,
  },
  shopId: {
    type: DataTypes.BIGINT,
    allowNull: false
  },
}, {
   sequelize,
   createdAt: false,
   updatedAt: false,
   modelName: 'MedsToShops'
});
MedsToShops.sync()

class Orders extends Model {}
Orders.init({
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    primaryKey: true
  },
   customerId: {
    type: DataTypes.BIGINT,
    allowNull: true
  },
  customerName: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  customerEmail: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  customerPhone: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  customerAdress: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  deliveryType: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  totalCost: {
    type: DataTypes.FLOAT,
    allowNull: true
  },
  order: {
    type: DataTypes.TEXT,
    allowNull: true
  },
}, {
   sequelize,
   createdAt: true,
   updatedAt: false,
   modelName: 'Orders'
});
Orders.sync()

class Coupons extends Model {}
Coupons.init({
  id: {
    type: DataTypes.BIGINT,
    allowNull: false,
    primaryKey: true
  },
   name: {
    type: DataTypes.BIGINT,
    allowNull: true
  },
  code: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  copied: {
    type: DataTypes.BOOLEAN, // Boolean
    allowNull: false
  },
  }, {
   sequelize,
   createdAt: false,
   updatedAt: false,
   modelName: 'Coupons'
});
Coupons.sync()
// Shops.belongsToMany(Meds, { through: 'MedsToShops' });
await sequelize.sync();
console.log("All models were synchronized successfully.");


app.get('/', async (req, res) => {
  let shops =  await Shops.findAll();
  let meds =  await Meds.findAll();
  let medsShops = await MedsToShops.findAll();
  res.status(200).send({shops, meds, medsShops})
}) 
app.get('/cart', async (req, res) => {
  let cart =  await Cart.findAll();
  let shops =  await Shops.findAll();
 res.status(200).send({cart, shops})
}) 
app.post('/cart', async (req, res) => {
      const itemExists = await Cart.findOne({ where: { name: `${req.body.name}`, shop: `${req.body.shop}` }});
    if(itemExists === null){
      const newItem =  await Cart.create({ id: req.body.id, name: req.body.name, shop: req.body.shop, quantity:req.body.quantity, price: req.body.price});
    } else {
      itemExists.quantity = Number(itemExists.quantity) + Number(req.body.quantity);
      await itemExists.save();
    }
})
app.post('/customer', async (req, res) => {
  const maxId = await Customers.max('id')
  let newCustomer =  await Customers.create({ id: maxId+1, name: req.body.name, email: req.body.email, phone:req.body.phone, adress: req.body.adress});
  await newCustomer.save();
})
app.put('/cart', async (req, res) => {
  const id = Number(req.body.id)
  const quantity = Number(req.body.quantity)
  if (quantity === 0){
    await Cart.destroy({
      where: { id }
    });
  } else {
    await Cart.update(
      {quantity: req.body.quantity},
      {
      where: { id }
    });
  }
})
app.delete('/cart', async (req, res) => {
  const { id } = req.body
  await Cart.destroy({
    where: { id }
  });
})
app.get('/orders', async (req, res) => {
  let orders = await Orders.findAll();
 res.status(200).send(orders)
}) 
app.post('/orders', async (req, res) => {
  const maxIdCustomers = await Customers.max('id')
  if(maxIdCustomers === null) {
    maxIdCustomers = 0
  }
  let newCustomer =  await Customers.create({ id: maxIdCustomers+1, name: req.body.name, email: req.body.email, phone:req.body.phone, adress: req.body.adress });
  await newCustomer.save();

  let maxIdOrders = await Orders.max('id')
  if(maxIdOrders === null) {
    maxIdOrders = 0
  }
  let totalCost = req.body.totalCost;
  let newOrder =  await Orders.create({ id:maxIdOrders+1, customerId:maxIdCustomers+1, customerName: req.body.name, customerEmail:req.body.email, customerPhone:req.body.phone, customerAdress:req.body.adress, deliveryType:req.body.deliveryType, totalCost, order:req.body.order});
  await newOrder.save();
})
app.put('/favorite', async (req, res) => {
  const medToChange = await Meds.findByPk(req.body.id);
  const newFavorite = !medToChange.dataValues.favorite;
  await Meds.update(
    {favorite: newFavorite},
    {
    where: {
      id: req.body.id
    }
  });
})
app.get('/coupons', async (req, res) => {
  let coupons =  await Coupons.findAll();
 res.status(200).send(coupons)
}) 
app.put('/coupons', async (req, res) => {
  const couponToChange = await Coupons.findByPk(req.body.id);
  const newValue = !couponToChange.copied;
  await Coupons.update(
    {copied: newValue},
    {
    where: {
      id: req.body.id
    }
  });
}) 
// app.get('/api/skills/:id', async (req, res) => {
//   let selectedSkill =  await Skills.findOne({ where: { id: `${req.params.id}` } });

//   if (selectedSkill === null) {
//     console.log('The skill is not found!')
//   } else {
//     res.send(selectedSkill)
//   }
// }) 

