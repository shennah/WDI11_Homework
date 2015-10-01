var accountList = [];

function addAccount(name, starterAmount) {
  var account = {
    name: name,
    balance: starterAmount,
  }
  accountList.push(account);
}

function findAccount(name) {
  for (i = 0; i < accountList.length; i++) {
    if (accountList[i].name === name)
    var account = accountList[i];
  }
  return account;
}

function withdraw(name, amount) {
  if (findAccount(name).balance - amount < 0) {
    console.log("You're not allowed to go into the Red, I'm afraid.");
  } else {
    findAccount(name).balance -= amount;
    console.log("You have just withdrawn " + amount + " from " + name + "'s account.");
  }
}

function deposit(name, amount){
  findAccount(name).balance += amount;
  console.log("You have just deposited " + amount + " into " + name + "'s account.");
}

function totalAmounts() {
  var total = 0;
  for (i = 0; i < accountList.length; i++) {
    total += accountList[i].balance;
  }
  console.log("Total amount currently held in the bank: " + total);
}

function transfer(fromAccount, toAccount, amount) {
  if (findAccount(fromAccount).balance - amount < 0) {
    console.log("There isn't enough money in the " + fromAccount + " account to proceed with the transfer.")
  } else {
    withdraw(fromAccount, amount);
    deposit(toAccount, amount);
    console.log("You have just transferred " + amount + " from " + fromAccount + "'s account to " + toAccount + "'s account.");
  }
}

function showAccount(name) {
  for (i = 0; i < accountList.length; i++) {
    if (accountList[i].name === name) {
      console.log("Balance is: " + accountList[i].balance);
    }
  }
}

addAccount("Donald", 600)
// deposit("Donald", 800)
addAccount("Sarah", 1200)
// deposit("Sarah", 1200)
totalAmounts();
// withdraw("Sarah", 500);
totalAmounts();
