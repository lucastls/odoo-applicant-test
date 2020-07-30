{
    "name":
    "Employee Casai",
    'description': 'casai oddo test',
    'author': 'Lucas Santos',
    "depends": ['mail'],
    'data': [
        'views/menu.xml',
        'views/hr_employee.xml',
        'views/hr_department.xml',
        'security/employee_casai_security.xml',
        'security/ir.model.access.csv',
    ],
    "application": True,
    "installable": True,
}
