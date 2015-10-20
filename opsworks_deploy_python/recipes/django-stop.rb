node[:deploy].each do |application, deploy|
  if deploy[:custom_type] != 'django'
    next
  end

  enable_gunicorn= Helpers.buildout_setting(deploy, 'enable_gunicorn', node)
    # TODO: use upstart
  end

end
