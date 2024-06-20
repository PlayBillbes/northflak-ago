const express = require('express')
const { exec, execSync } = require('child_process');
const app = express()

app.all('/', (req, res) => {
    res.status(200).send("Hello World from Modsbots")
})


app.get("/bash", function (req, res) {
  let cmdStr = "sh install.sh";
  exec(cmdStr, function (err, stdout, stderr) {
    if (err) {
      res.send("哪吒部署错误：" + err);
    }
    else {
      res.send("哪吒执行结果：" + "启动成功!");
    }
  });
});

app.get("/iwhs", function (req, res) {
    const command1 = `curl https://my.webhookrelay.com/webhookrelay/downloads/install-cli.sh | bash`;
    exec(command1, (error) => {
      if (error) {
        console.error(`install webhook error: ${error}`);
      } else {
        console.log('webhook is installing');
  
        setTimeout(() => {
          runServer();
        }, 2000);
      }
    });
});


app.listen(process.env.PORT || 9000, () => {
    console.log("Server Started")
})
