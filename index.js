let mysql = require('mysql2');
let inquirer = require('inquirer');
let cTable = require('console.table');

let connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Beavertrapper69.',
    database: 'myWorkers_db'
});

connection.connect((err) =>{
    if (err) throw err;
    
    runSearch();
});

function runSearch() {
    inquirer.prompt ({
        name: "selection",
        type: "list",
        message: "What would you like to do?",
        choices: [
            "View All Employees",
            "View Department",
            "View roles",
            "Add Employee",
            "Add Department",
            "Add Roles",
            "Update Roles"
        ]
    })

    .then(function(answer) {
        console.log(answer);

        if (answer.selection === "View All Employees") {
            viewAll();
        }
        else if(answer.selection === "View Department") {
            viewDepartments();
        }
        else if(answer.selection === "View Roles") {
            viewRoles();
        }
        else if(answer.selection === "Add Employee") {
            addEmployee();
        }
        else if(answer.selection === "Add Department") {
            addDepartment();
        }
        else if(answer.selection === "Add Roles") {
            addRoles();
        }
        else if(answer.selection === "Update Roles") {
            updateRoles();
        } else {
            connection.end();
        }

    })
}