[Unit]
Description=Odoo Open Source ERP and CRM
Requires=postgresql.service
After=network.target postgresql.service
    
[Service]
Type=simple
PermissionsStartOnly=true
SyslogIdentifier=odoo-server
User=odoo
Group=odoo
ExecStart=/opt/odoo-8.0/odoo.py --config=/etc/odoo-server.conf --addons-path=/opt/odoo-8.0/addons/
WorkingDirectory=/opt/odoo-8.0/
StandardOutput=/var/log/odoo/odoo-server.log
    
[Install]
WantedBy=multi-user.target
