$j(function() {
  $j("#alert").click(function() {
    alert(this.getAttribute("data-message"));
    return false;
  })
})

