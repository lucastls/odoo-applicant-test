from odoo import api, fields, models


class HrEmployee(models.Model):
    _name = "hr.employee"

    first_name = fields.Char(
        string="First Name")
    last_name = fields.Char(
        string="Last Name")
    full_name = fields.Char(
        string="Full Name",
        computed="_compute_full_name")
    department_id = fields.Many2one(
        string="Department",
        comodel_name="hr.department")

    @api.multi
    def _compute_full_name(self):
        for rec in self:
            rec.full_name = f"{rec.first_name} {rec.last_name}"


class HrDepartment(models.Model):
    _name = "hr.department"

    name = fields.Char(string="First Name")
    description = fields.Char(string="Last Name")
