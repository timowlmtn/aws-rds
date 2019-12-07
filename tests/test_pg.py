# -*- coding: utf-8 -*-

from .context import api_layer
import unittest
import os


class DbTestSuite(unittest.TestCase):
    """Test cases for the DB layer suite."""

    def test_connect_postgres(self):

        myenv = dict()

        myenv["PG_USER"] = os.environ["PG_USER"]
        myenv["PG_PASSWORD"] = os.environ["PG_PASSWORD"]
        myenv["PG_HOST"] = os.environ["PG_HOST"]
        myenv["PG_PORT"] = os.environ["PG_PORT"]
        myenv["PG_DB"] = os.environ["PG_DB"]

        con = api_layer.connect_db(myenv)
        self.assertTrue(con is not None)


if __name__ == '__main__':
    unittest.main()
