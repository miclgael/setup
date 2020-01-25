const prompts = require("prompts");
const shell = require("shelljs");

// Multi-select.
// use space bar to make choices.
(async () => {
  const response = await prompts({
    type: "multiselect",
    name: "value",
    message: "Select your web browsers",
    instructions: false,
    choices: [
      { title: "Firefox", value: "firefox" },
      { title: "Firefox Developer Edition", value: "firefox-developer-edition" }
    ]
  });

  let executable = "brew cask install";
  response.value.forEach(command => {
    executable += ` ${command}`;
  });

  //   console.log(executable); // > brew cask install firefox firefox-developer-edition* *not a thing?.
  shell.exec(executable);
})();

// (async () => {
//   const response = await prompts({
//     type: "confirm",
//     name: "value",
//     message: "install dev tools?",
//     initial: false
//   });

//   switch (response.value) {
//     case true:
//       console.log("Success! \nThis might take a while...");
//       shell.exec("bin/install-devtools.sh");
//       break;
//     case false:
//       console.log("false!");
//       break;
//     default:
//       break;
//   }

//   //   console.log(response);
// })();

// (async () => {
//   const response = await prompts({
//     type: "number",
//     name: "value",
//     message: "How old are you?",
//     validate: value => (value < 18 ? `Nightclub is 18+ only` : true)
//   });

//   console.log(response); // => { value: 24 }
// })();
