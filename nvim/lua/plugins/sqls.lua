return {
  on_attach = function(client)
    client.resolved_capabilities.execute_command = true
    require('sqls').setup()
  end
}
