class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.cm':}
  dockeragent::node {'db.puppet.cm':}
}
