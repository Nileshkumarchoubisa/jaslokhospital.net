<%@ Page Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.Framework.DefaultPage" CodeFile="Default.aspx.cs" EnableViewState="true" ViewStateMode="Enabled"%>
<%@ Register TagPrefix="dnncrm" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client"%>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Common.Controls" Assembly="DotNetNuke"%>
<asp:literal id="skinDocType" runat="server" />
<html <asp:literal id="attributeList" runat="server" EnableViewState="true" ViewStateMode="Enabled"></asp:literal>>
<head id="Head" runat="server" >
    <asp:PlaceHolder runat="server" ID="metaPanel"></asp:PlaceHolder>
    <title />
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta id="MetaRefresh" runat="Server" http-equiv="Refresh" name="Refresh" Visible="False" />
    <meta id="MetaDescription" runat="Server" name="DESCRIPTION" Visible="False"/>
    <meta id="MetaKeywords" runat="Server" name="KEYWORDS" Visible="False"/>
    <meta id="MetaCopyright" runat="Server" name="COPYRIGHT" Visible="False"/>
    <meta id="MetaGenerator" runat="Server" name="GENERATOR" Visible="False"/>
    <meta id="MetaAuthor" runat="Server" name="AUTHOR" Visible="False"/>
    <meta id="MetaRobots" runat="server" name="ROBOTS" Visible="False" />   
     <dnncrm:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="Styles/bootstrap.min.css" PathNameAlias="SkinPath" /> 
     <link rel="shortcut icon" href="Portals/_default/Skins/JaslokSkin/Styles/images/favicon.png">
    <asp:PlaceHolder runat="server" ID="ClientDependencyHeadCss"></asp:PlaceHolder>
    <asp:PlaceHolder runat="server" ID="ClientDependencyHeadJs"></asp:PlaceHolder>
    <asp:placeholder id="CSS" runat="server" />
    <asp:placeholder id="SCRIPTS" runat="server" />
     <link href="Portals/_default/Skins/JaslokSkin/Styles/css/font-awesome.min.css" rel="stylesheet">
    <link href="Portals/_default/Skins/JaslokSkin/Styles/css/style.css" rel="stylesheet">
    <link href="Portals/_default/Skins/JaslokSkin/Styles/css/common.css" rel="stylesheet">
    <link href="Portals/_default/Skins/JaslokSkin/Styles/css/responsive.css" rel="stylesheet">
    <link href="Portals/_default/Skins/JaslokSkin/Styles/css/carousel.css" rel="stylesheet"> 
       <link rel="stylesheet"  href="Portals/_default/Skins/JaslokSkin/Styles/css/lightslider.css"/>
<link href="Portals/_default/Skins/JaslokSkin/Styles/css/datetimepicker.min.css" rel="stylesheet" />
    <link href="Portals/_default/Skins/JaslokSkin/Styles/css/carouseller.css" rel="stylesheet" />

    <script type="text/javascript">
        $(document).ready(function () {
            $('#Carousel').carousel({
                interval: 5000
            })
        });
    </script>
</head>
<body id="Body" runat="server">
    
    <dnn:Form ID="Form" runat="server" ENCTYPE="multipart/form-data">
        <asp:PlaceHolder ID="BodySCRIPTS" runat="server" />
        <asp:Label ID="SkinError" runat="server" CssClass="NormalRed" Visible="False"></asp:Label>
        <asp:PlaceHolder ID="SkinPlaceHolder" runat="server" />
        <input id="ScrollTop" runat="server" name="ScrollTop" type="hidden" />
        <input id="__dnnVariable" runat="server" name="__dnnVariable" type="hidden" autocomplete="off" />
        <asp:placeholder runat="server" ID="ClientResourcesFormBottom" />
    </dnn:Form>
    <asp:placeholder runat="server" id="ClientResourceIncludes" />
    <dnncrm:ClientResourceLoader runat="server" id="ClientResourceLoader">
        <Paths>
            <dnncrm:ClientResourcePath Name="SkinPath" Path="<%# CurrentSkinPath %>" />
            <dnncrm:ClientResourcePath Name="SharedScripts" Path="~/Resources/Shared/Scripts/" />
        </Paths>
    </dnncrm:ClientResourceLoader>
</body>
</html>
    <script type="text/javascript">
        $(function () {
            carouseller = new carousel('.carouseller');
        });
	</script>    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script>
        $(document).ready(function () {
            $("#myBtn").click(function () {
                $("#myModal").modal();
            });
        });
</script> 
    <script type="text/javascript">
        /*------------------------popup box  -----------------------------*/
        $(document).ready(function () {
            $('.video-play').click(function () {

                $('.popup-back, .popup-div').fadeIn();
            });

            $('.close').click(function () {
                $('.popup-back, .popup-div').fadeOut();
            });
            $('.popup-back').click(function () {
                $('.popup-back, .popup-div').fadeOut();
            });
        });
</script>

<%--<script src="Portals/_default/Skins/JaslokSkin/Styles/js/jquery-1.9.1.min.js"></script>--%>
<script src="/Portals/_default/Skins/JaslokSkin/Styles/js/bootstrap.min.js"></script>
<script src="/Portals/_default/Skins/JaslokSkin/Styles/js/lightslider.js"></script>
<script src="/Portals/_default/Skins/JaslokSkin/Styles/js/datetimepicker.min.js"></script>
<script src="/Portals/_default/Skins/JaslokSkin/Styles/js/carouseller.min.js"></script>
<script src="/Portals/_default/Skins/JaslokSkin/Styles/js/jquery.jcarousel.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

 
  <script type="text/javascript">
      (function ($) {

          $(function () {
              var jcarousel = $('.jcarousel');
              jcarousel
                  .on('jcarousel:reload jcarousel:create', function () {
                      var carousel = $(this),
                          width = carousel.innerWidth();
                      if (width >= 600) {
                          width = width / 2;
                      } else if (width >= 350) {
                          width = width / 1;
                      }
                      carousel.jcarousel('items').css('width', Math.ceil(width) + 'px');
                  })
                  .jcarousel({
                      wrap: 'circular'
                  });
              $('.jcarousel-control-prev')
                  .jcarouselControl({
                      target: '-=1'
                  });
              $('.jcarousel-control-next')
                  .jcarouselControl({
                      target: '+=1'
                  });
              $('.jcarousel-pagination')
                  .on('jcarouselpagination:active', 'a', function () {
                      $(this).addClass('active');
                  })
                  .on('jcarouselpagination:inactive', 'a', function () {
                      $(this).removeClass('active');
                  })
                  .on('click', function (e) {
                      e.preventDefault();
                  })
                  .jcarouselPagination({
                      perPage: 1,
                      item: function (page) {
                          return '<a href="#' + page + '">' + page + '</a>';
                      }
                  });
          });
      })(jQuery);

      $(document).ready(function () {
          $(function () {
              $('#datepicker1').datetimepicker();
          });
          $("#myBtn").click(function () {
              $("#myModal").modal();
          });
          $(function () {
              carouseller = new carousel('.carouseller');
          });
      });
            </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(function () {
                $('#datepicker1').datetimepicker();
                $('#datepicker2').datetimepicker();

            });

            $("#myBtn").click(function () {
                $("#myModal").modal();
            });
            $(function () {
                carouseller = new carousel('.carouseller');
            });
        });
    </script> 
    <script type="text/javascript">
        if ($(window).width() < 767) {

            $('#image-gallery').lightSlider({
                gallery: true,
                item: 1,
                slideMargin: 0,
                speed: 500,
                auto: true,
                loop: true,
                onSliderLoad: function () {
                    $('#image-gallery').removeClass('cS-hidden');
                }
            });
        } else {
            $('#image-gallery').lightSlider({
                gallery: true,
                item: 2,
                slideMargin: 0,
                speed: 500,
                auto: true,
                loop: true,
                onSliderLoad: function () {
                    $('#image-gallery').removeClass('cS-hidden');
                }
            });
        }
        $('#image-gallery2').lightSlider({
            gallery: true,
            item: 1,
            slideMargin: 0,
            speed: 500,
            auto: true,
            loop: true,
            onSliderLoad: function () {
                $('#image-gallery2').removeClass('cS-hidden');
            }
        });
        $('#image-gallery3').lightSlider({
            gallery: true,
            item: 1,
            slideMargin: 0,
            speed: 500,
            auto: true,
            loop: true,
            onSliderLoad: function () {
                $('#image-gallery3').removeClass('cS-hidden');
            }
        });
        $('#CertificateImage-gallery').lightSlider({
            gallery: true,
            item: 1,
            slideMargin: 0,
            speed: 500,
            auto: false,
            loop: true,
            onSliderLoad: function () {
                $('#CertificateImage-gallery').removeClass('cS-hidden');
            }
        });

        jQuery(function ($) {
            $('.navbar .dropdown').hover(function () {
                $(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();

            }, function () {
                $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp();

            });

            $('.navbar .dropdown > a').click(function () {
                location.href = this.href;
            });

        });

        /*---Right Side Find a doctor tab---*/
        $(function () {

            $('.finder').on('mouseover', function (event) {
                $('.sliding-doc-info').stop().animate({ "top": "-230" }, 800, "easeOutCubic");
            });


            $('#gotoDocTab').on('click', function (event) {
                $('.sliding-doc-info').stop().animate({ "top": "-230" }, 800, "easeOutCubic");
            });



            $('.side-slider').on('mouseover', function (event) {
                $('.side-slider').stop().animate({ "right": "-78" }, 800, "easeOutCubic");
                $('.for').stop().animate({ "padding": "1.5em" }, 1500, "easeOutCubic");
            });

            $('.side-slider').on('mouseleave', function (event) {
                $('.side-slider').stop().animate({ "right": "-368px" }, 800, "easeOutCubic", function () {
                    $('.for').stop().animate({
                        "padding-top": "1.5em",
                        "padding-right": "1.5em",
                        "padding-bottom": "1.5em",
                        "padding-left": "3em"
                    }, 500, "easeOutCubic");
                });
            });

        });
        $('.collapse').on('shown.bs.collapse', function () {
            $(this).parent().find(".fa-plus").removeClass("fa-plus").addClass("fa-minus");
        }).on('hidden.bs.collapse', function () {
            $(this).parent().find(".fa-minus").removeClass("fa-minus").addClass("fa-plus");
        });
</script>