# -*- coding: utf-8 -*-
from __future__ import absolute_import

import flask_restful as restful

from {{ package }}.{{ module }}.validators import request_validate, response_filter


class Resource(restful.Resource):
    method_decorators = [request_validate, response_filter]
