# -*- coding: utf-8 -*-
from __future__ import absolute_import

from flask import Blueprint
import flask_restful as restful

from {{ package }}.{{ module }}.routes import routes
from {{ package }}.{{ module }}.validators import security


@security.scopes_loader
def current_scopes():
    return {{ scopes_supported }}

bp = Blueprint('{{ blueprint }}', __name__, static_folder='static')
api = restful.Api(bp, catch_all_404s=True)

for route in routes:
    api.add_resource(route.pop('resource'), *route.pop('urls'), **route)
