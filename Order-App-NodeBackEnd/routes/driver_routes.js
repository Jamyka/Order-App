const DriversController = require('../controllers/drivers_controller')
module.exports = (app)=>{
  app.get('/api/drivers', DriversController.all)
//
  app.post('/api/drivers', DriversController.create_driver)
//
  app.put('/api/drivers/:id', DriversController.edit)
//
  app.delete('/api/drivers/:id',  DriversController.delete)
//
  app.get('/api/drivers/:id', DriversController.details)
}
