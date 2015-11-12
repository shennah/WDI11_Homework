function displayData(data) {
  if (data["photos"]["photo"]) {
    var photosArray = data["photos"]["photo"];
    for (var i = 0; i < photosArray.length; i++) {
      var photo = photosArray[i];
      var imageUrl = "https://farm" +
        photo.farm +
        ".staticflickr.com/" +
        photo.server +
        "/" + photo.id +
        "_" + photo.secret +
        "_m.jpg";
      var image = $("<img>");
      image.attr("src", imageUrl);
      // image.onclick(alert("clicked!"));
      $(".search-results").append(image);
      $(image).wrap($('<a>', {
        href: imageUrl
      }));
      console.log(image);
      console.log(imageUrl);
    };
  }
}

tally = {
  number: 1,
  increment: function() {
    this.number++
  }
};

function getOnWithIt(pageNumber) {
  if ($(".search-input").val()) {

    var text = $(".search-input").val();
    console.log(text);
    console.log(pageNumber);

    $.ajax({
      url: "https://api.flickr.com/services/rest/",
      type: "GET",
      dataType: "jsonp",
      jsonp: "jsoncallback",
      data: {
        method: "flickr.photos.search",
        text: text,
        page: tally.number,
        api_key: "1cdd20213d7a27a4a22b33d47277dabd",
        format: "json"
      },

      pageNumber: function(data) {
        console.log(date["photos"]["page"]);
      },

      success: function(data) {
        console.log("success", data);

        displayData(data);
      },
      error: function(xhr, status, message) {
        console.log("error", status, message);
      }
    });
  }
}

$(".search-button").on("click", function() {
  $(".search-results").empty();
  getOnWithIt(tally);
  tally.increment();
});


$(".load-more").on("click", function() {
  getOnWithIt(pageNumber(tally));
  tally.increment();
});


$(window).scroll(function() {
  var docHeight = $(document).height(); // total height of the document
  var scrollTop = $(window).scrollTop(); // position of top of the screen inside the document
  var windowHeight = $(window).height(); // height of window
  if (scrollTop + windowHeight === docHeight) {
    getOnWithIt(tally);
    tally.increment();
    // alert("hit the bottom");
  }
});



$(document).ready(function() {
  // tally.number = 1;
});
