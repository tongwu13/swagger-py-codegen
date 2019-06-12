# -*- coding: utf-8 -*-
from __future__ import absolute_import

from flask import Flask

import {{ package }}.{{ blueprint }}


def create_app():
    app = Flask(__name__, static_folder='static')
    app.register_blueprint(
        {{ blueprint }}.bp,
        url_prefix='{{ base_path }}')
    return app

if __name__ == '__main__':
    create_app().run(debug=True)
