# settings/dev.py 
from .common import *


DEBUG = True
TEMPLATE_DEBUG = DEBUG

DATABASES = {
    'default': dj_database_url.parse(get_env_variable('DJANGO_DATABASE_URL'))
}

