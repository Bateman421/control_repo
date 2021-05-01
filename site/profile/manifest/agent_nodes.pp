class profile::agent_node{
  include dockeragent
  dockeragent::node {'web.puppet.cm':}
  dockeragent::node {'db.puppet.cm':}
}
