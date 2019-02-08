module.exports = function (context, IoTHubMessages) {
    context.log(`JavaScript eventhub trigger function called for message array: ${IoTHubMessages}`);
    var temperature="";
    var humidity="";
    IoTHubMessages.forEach(message => {
        context.log(`Processed message: ${message}`);
        temperature = message.temperature;
       humidity = message.humidity;
    });

var output = {
        "temperature": temperature,
        "humidity": humidity,
    };
//mod code start


    //mod code end

    context.log(`Output content: ${output}`);
    context.bindings.outputDocument = output;
    context.done();
};
