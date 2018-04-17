
import Pyro4
import sys

question = sys.argv[1]
get = Pyro4.Proxy("PYRONAME:example.bot")
name = get.get_response(question)
print(name)