//1/10/2015  week1-4 homeowork
//https://gist.github.com/wofockham/dacf2da17c743afb2b17
//js bank

var bank = [  //bank array with name and account
    {name: 'Mary',
     balance: 100
    },{
     name: 'David',
     balance: 200
    },{
     name: 'Jane',
     balance:300
    }];

function sumBankBalance(thisBank) {   
    var total = 0;
    for (var i = 0; i<thisBank.length;i++) {
       total += thisBank[i].balance; 
    }
    return "Total Bank Balance: " + total;
}

function newBankAccount(thisBank,newName,newBalance) {
    var newAccount = {
    name: newName,
    balance: newBalance
};
   thisBank.push(newAccount);
   return "New account holder " + newName + " is added.";
}

function chgAccountBalance(thisBank,acName,acAmountChg) {
	var result="";
    // positive acAmountChg is deposit, negative amount is withdraw
    for (var i =0; i<thisBank.length; i++) {
        if(thisBank[i].name === acName) {  //if account name is found
        	acFound = true;
            if ((thisBank[i].balance + acAmountChg)>=0) { //if withdraw balance <= a/c balance
                thisBank[i].balance += acAmountChg;
                return acName + "\'s balance has changed by " + acAmountChg + " to " + thisBank[i].balance;
            } else {  //if withdraw amount > a/c balance
            	return "Withdraw amount " + acAmountChg + " exceeds account balance of " + thisBank[i].balance + ", pls change amount.";
            }
            break;
        }
    }
    if (!acFound) {  //if name is not found
        return "Name not found";
    }
}

function accountTransfer(thisBank, fromName,toName,amount) {
	var fromID = -1;
	var toID = -1;
	//check if both parties are the same
	if (fromName===toName) {
		return "both names can't be same, transfer canceled";
	}
	//check if both name are in the bank array
	for (var i =0; i< thisBank.length; i++) {
		if (thisBank[i].name === fromName) {
			fromID = i;
		} else if (thisBank[i].name === toName) {
			toID = i;
		}
	}
	if (fromID === -1) {
		return fromName + " is not found.";
	}
	if (toID === -1) {
		return toName + " is not found";
	}
	// check if transferer's balance has enough fund
	if ((thisBank[fromID].balance - amount) < 0) {
		return "Not enought fund in " + fromName + "\' account, current balance is " + thisBank[fromID].balance;
	}
	//process transfer
	thisBank[fromID].balance -= amount;
	thisBank[toID].balance += amount;
	return "Transfer complete.";
}


console.log(sumBankBalance(bank));
console.log(newBankAccount(bank,'Tess',400));
console.log(sumBankBalance(bank));
console.log(chgAccountBalance(bank,'Jane',-9));
console.log(accountTransfer(bank,'Mary','David',99));
console.log(bank);






