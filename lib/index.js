const Plugin = require('inform-shared').Plugin;


class ExamplePlugin extends Plugin {
  receive(message) {
    console.log(message);
  }
}


module.exports.Plugin = ExamplePlugin;

