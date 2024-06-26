-- see :help lua-guide
P = function(value)
  print(vim.inspect(value))
  return value
end

RELOAD = function (...)
  return require("plenary.reload").reload_module(...)
end

R = function (name)
  RELOAD(name)
  return require(name)
end
