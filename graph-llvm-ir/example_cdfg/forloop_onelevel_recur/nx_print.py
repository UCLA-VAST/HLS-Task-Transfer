import networkx as nx
dot_file = '/vagrant/example_cdfg/forloop_onelevel_recur/_Z9recur_forv.dot'
g = nx.drawing.nx_pydot.read_dot(dot_file)
for node, nd in g.nodes(data=True):
    print(node, '\t\t', nd)