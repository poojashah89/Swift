
import Pyro4
get = Pyro4.Proxy("PYRONAME:example.bot")
get.get_response('What hours are you open?')

import Pyro4

name = input("What hours are you open?").strip()

get = Pyro4.Proxy("PYRONAME:example.bot")    # use name server object lookup uri shortcut
print(get.get_response(name))