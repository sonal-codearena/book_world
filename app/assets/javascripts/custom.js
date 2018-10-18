$( document ).on('turbolinks:load', function() {
  var categoryList;
  $.ajax({
    url: '/dashboard/category_list',
    async:false,
    success: function(data) {
      categoryList = data
    }
  });
  var options = {
    url: function(phrase) {
      return "/dashboard/search?q=" + phrase;
    },
    getValue: "name",
    categories: categoryList,
    list: {
      match: {
        enabled: true
      },
      sort: {
        enabled: true
      }
    },
    theme: "square"
  };

  $("#search").easyAutocomplete(options);

  $("#book_search").click(function(event) {
    event.preventDefault();
    var book_name = $("#search").val();
    window.location = "/books/" + book_name
  });
});
