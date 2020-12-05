jQuery ->
  role = $("meta[name='current-user']").data("role")
  $("[data-role='#{role}']").removeClass("hidden")
