import sys
import logging
import db_config
import psycopg2

#rds settings
db_host  = db_config.db_host
name = db_config.db_username
password = db_config.db_password
db_name = db_config.db_name
port = 3306

logger = logging.getLogger()
logger.setLevel(logging.INFO)

server_address = (db_host, port)
try:
    conn = psycopg2.connect(db_host, user=name, passwd=password, db=db_name, connect_timeout=5)
except:
    logger.error("ERROR: Unexpected error: Could not connect to PostgresQL instance.")
    sys.exit()

logger.info("SUCCESS: Connection to RDS mysql instance succeeded")
def handler(event, context):
    """
    This function fetches content from mysql RDS instance
    """
    pass



