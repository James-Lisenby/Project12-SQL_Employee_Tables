let mysql = require('mysql2');
let inquirer = require('inquirer');
let cTable = require('console.table');
// Requires the installed NPM packages

let connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Beavertrapper69.',
    database: 'myWorkers_db'
});
// Connects to local host

connection.connect((err) =>{
    if (err) throw err;
    
    runSearch();
    // Function to start the command line app.
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
    // Begins function based on selected choice.

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

function viewAll(){
    connection.query(
        "SELECT employee.id, employee.first_name, employee.last_name, employee.role_id, employee.manager_id, role.title, role.salary, role.id, department.id FROM employee LEFT JOIN role ON employee.role_id = role.id LEFT JOIN department ON role.department_id = department.id", function(err, result, fields) {
            if (err) throw err;
            console.table(result);
            runSearch();
        }
    );
};

function viewDepartments();

function viewRoles();

function addEmployee();

function addDepartment();

function addRoles();

function updateRoles();