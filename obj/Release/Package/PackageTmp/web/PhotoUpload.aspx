<%@ Page Title="" Language="C#" MasterPageFile="~/web/Intellidate.Master" AutoEventWireup="true" CodeBehind="PhotoUpload.aspx.cs" Inherits="IntellidateR1Web.web.PhotoUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <asp:Literal ID="ltScripts" runat="server"></asp:Literal>

    <script type="text/javascript">

        function sendFile(fdata) {
            var sUrl = _SitePath + "web/service/PhotoUpload";

            // Build the crop query string
            var _Crop = "?crop=y";
            _Crop = _Crop + "&X1=" + $("#hdnX1").val();
            _Crop = _Crop + "&X2=" + $("#hdnX2").val();
            _Crop = _Crop + "&Y1=" + $("#hdnY1").val();
            _Crop = _Crop + "&Y2=" + $("#hdnY2").val();

            sUrl = sUrl + _Crop;
            $.ajax({
                type: 'POST',
                paramName: 'files',
                url: sUrl,
                data: fdata,

                success: function (msg) {
                    if (msg.ResponseCode == 1) {
                        window.location.href = _SitePath + "web/Home";
                    }
                },
                processData: false,
                contentType: false
            });
        }

        $(document).ready(function () {

            $("#btnSubmit").click(function () {

               // alert("hi");
                $("#btnSubmit").addClass("Disabled");

                if ($("#hdnImageUrl").val() != "") {
                    var _postDATA = new Object();
                    _postDATA.PhotoUrl = $("#hdnImageUrl").val();
                    _postDATA.PhotoFileName = $("#hdnImageName").val();

                    var _postUrl = _SitePath + "web/service/UrlUpload";

                    var _Crop = "?crop=y";
                    _Crop = _Crop + "&X1=" + $("#hdnX1").val();
                    _Crop = _Crop + "&X2=" + $("#hdnX2").val();
                    _Crop = _Crop + "&Y1=" + $("#hdnY1").val();
                    _Crop = _Crop + "&Y2=" + $("#hdnY2").val();

                    _postUrl = _postUrl + _Crop;
                    $.postDATA(_postUrl, _postDATA, function () {
                        window.location.href = _SitePath + "web/Home";
                    });
                }
                else {
                    formdata = new FormData();
                    if (formdata) {
                        formdata.append("files[]", imgObject);
                    }
                    sendFile(formdata);
                }
                
            });

            $("#btnBrowse").click(function () {
                $("#flBrowse").trigger("click");
            });

            var imgObject;
            $("#flBrowse").change(function () {
                imgObject = this.files[0];

                $("#divPhotoPreview").empty();

                var loadingImage = loadImage(
                    imgObject,
                    function (img) {

                        var _ImageWidth = img.width;
                        var _ImageHeight = img.height;

                        if (_ImageWidth < 200 || _ImageHeight < 200) {
                            alert("Please use a larger picture");
                            return;
                        }


                        $(".hdnX1").val(0);
                        $(".hdnY1").val(0);
                        $(".hdnX2").val(200);
                        $(".hdnY2").val(200);

                        $(img).attr("id", "imgPreview200");

                        $(".imgareaselect-selection").parent().remove();
                        $(".imgareaselect-outer").remove();

                        $(img).removeAttr("width");
                        $(img).removeAttr("height");
                        $("#divPhotoPreview").append(img);

                        $("#btnSubmit").removeClass("Disabled");

                        $(img).imgAreaSelect({
                            enable: true,
                            handles: true,
                            aspectRatio: "1:1",
                            x1: 0,
                            y1: 0,
                            x2: 200,
                            y2: 200,
                            imageHeight: _ImageHeight,
                            imageWidth: _ImageWidth,
                            onSelectEnd: function (_img, selection) {
                                $("#hdnX1").val(selection.x1);
                                $("#hdnY1").val(selection.y1);
                                $("#hdnX2").val(selection.width);
                                $("#hdnY2").val(selection.height);
                            }
                        });
                    },
                    { canvas: false, crop: false }
                );
            });
        });


        $(document).ready(function () {


            $("#btnSkip").click(function () {
                window.location.href = _SitePath + "web/Home";
            })



            //google 
            $("#btngoogle").click(function () {

                onApiLoad();

            });

            $("#btnonedrive").click(function () {

            });

            //dropbox









        });





    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form enctype="multipart/form-data" method="post" id="frmPhotoUpload">
        <div class="divmyprofile">
            <div class="divWhiteBox" style="background-image: url('images/photoicon.png'); min-height: 500px; background-repeat: no-repeat; background-position-x: center; background-position-y: center;">

                <div id="divPhotoPreview" style="margin: 0 auto; border: 0px solid #ccc; width: 400px; min-height: 400px; margin-top: 50px;">
                </div>

               
                <div class="SubmitButton FloatRight Disabled" id="btnSubmit">
                        <div>Upload</div>
                    </div>

                    <div class="BackButton FloatRight" id="btnSkip">
                        <div>Skip</div>
                    </div>



            </div>
            <div class="divBlockBox">
                <div class="divUploadPics">
                    <div>
                        <div class="divpHeader">Upload your photo using bellow options</div>
                        <div class="divpsection">Upload your photos from the below social sites or upload your pictures from my computer hard drive. </div>
                    </div>
                    <div class="divpcontainer">
                        <div class="divprow1" style="border: 0px solid;">
                            <div class="divgdrive" id="btngoogle">
                                <div style="width: 80px; height: 120px; z-index: 0;">
                                    <img src="images/icon-googledrive.png" id="" style="width: 80px; height: 80px;" class="MarginIcon" />
                                </div>
                                <div class="dvcurvegdrive" style="position: absolute; z-index: 10;">&nbsp;</div>
                            </div>
                            <div class="divgdrive" id="btnonedrive">
                                <div style="width: 80px; height: 120px; z-index: 0;">
                                    <img src="images/icon-onedrive.png" style="width: 80px; height: 80px;" class="MarginIcon" />
                                </div>
                                <div class="dvcurvegdrive" style="position: absolute; z-index: 10;">&nbsp;</div>
                            </div>
                        </div>

                        <div class="divprow1" style="border: 0px solid;">
                            <div class="divgdrive" id="btndropbox">
                                <div style="width: 80px; height: 120px; z-index: 0;">
                                    <img src="images/icon-dropbox.png" style="width: 80px; height: 80px;" class="MarginIcon" />

                                </div>
                                <div class="dvcurvegdrive" style="position: absolute; z-index: 10;">&nbsp;</div>
                            </div>
                            <div class="divgdrive" id="btnfacebook">
                                <div style="width: 80px; height: 120px; z-index: 0;">
                                    <img src="images/icon-facebook.png" style="width: 80px; height: 80px;" class="MarginIcon" />
                                </div>
                                <div class="dvcurvegdrive" style="position: absolute; z-index: 10;">&nbsp;</div>
                            </div>
                        </div>

                        <div class="divprow1" style="border: 0px solid;">
                            <div class="divgdrive" id="btninstagram">
                                <div style="width: 80px; height: 120px; z-index: 0;">
                                    <img src="images/icon-instagram.png" style="width: 80px; height: 80px;" class="MarginIcon" />
                                    <a id="lnkInstagram" runat="server" data-width="332" data-height="480"></a>
                                </div>
                                <div class="dvcurvegdrive" style="position: absolute; z-index: 10;">&nbsp;</div>
                            </div>
                            <div class="divgdrive" id="btnBrowse">
                                <div style="width: 80px; height: 120px; z-index: 0;">
                                    <img src="images/icon-harddisk.png" style="width: 80px; height: 80px;" class="MarginIcon" />

                                </div>
                                <div class="dvcurvegdrive" style="position: absolute; z-index: 10;">&nbsp;</div>
                            </div>
                            <input type="file" id="flBrowse" style="display: none;" accept="image/x-png, image/gif, image/jpeg" />
                        </div>

                    </div>
                    <div style="clear: both;"></div>
                    
                    

                    <input type="hidden" id="hdnX1" />
                    <input type="hidden" id="hdnX2" />
                    <input type="hidden" id="hdnY1" />
                    <input type="hidden" id="hdnY2" />

                    <input type="hidden" id="hdnImageUrl" />
                    <input type="hidden" id="hdnImageName" />

                </div>
            </div>
        </div>

        <!-- Markup for Carson Shold's Photo Selector -->
        <div id="CSPhotoSelector">
            <div class="CSPhotoSelector_dialog">
                <a href="#" id="CSPhotoSelector_buttonClose">x</a>
                <div class="CSPhotoSelector_form">
                    <div class="CSPhotoSelector_header">
                        <p>Choose from Photos</p>
                    </div>

                    <div class="CSPhotoSelector_content CSAlbumSelector_wrapper">
                        <p>Browse your albums until you find a picture you want to use</p>
                        <div class="CSPhotoSelector_searchContainer CSPhotoSelector_clearfix">
                            <div class="CSPhotoSelector_selectedCountContainer">Select an album</div>
                        </div>
                        <div class="CSPhotoSelector_photosContainer CSAlbum_container"></div>
                    </div>

                    <div class="CSPhotoSelector_content CSPhotoSelector_wrapper">
                        <p>Select a new photo</p>
                        <div class="CSPhotoSelector_searchContainer CSPhotoSelector_clearfix">
                            <div class="CSPhotoSelector_selectedCountContainer"><span class="CSPhotoSelector_selectedPhotoCount">0</span> / <span class="CSPhotoSelector_selectedPhotoCountMax">0</span> photos selected</div>
                            <a href="#" id="CSPhotoSelector_backToAlbums">Back to albums</a>
                        </div>
                        <div class="CSPhotoSelector_photosContainer CSPhoto_container"></div>
                    </div>

                    <div id="CSPhotoSelector_loader"></div>


                    <div class="CSPhotoSelector_footer CSPhotoSelector_clearfix">
                        <a href="#" id="CSPhotoSelector_pagePrev" class="CSPhotoSelector_disabled">Previous</a>
                        <a href="#" id="CSPhotoSelector_pageNext">Next</a>
                        <div class="CSPhotoSelector_pageNumberContainer">
                            Page <span id="CSPhotoSelector_pageNumber">1</span> / <span id="CSPhotoSelector_pageNumberTotal">1</span>
                        </div>
                        <a href="#" id="CSPhotoSelector_buttonOK">OK</a>
                        <a href="#" id="CSPhotoSelector_buttonCancel">Cancel</a>
                    </div>
                </div>
            </div>
        </div>

        <div id="instafeed" style="display: none;"></div>
        <div class="instagramImages">
            <span style="width: 100%; float: left;">
                <input type="button" value="Submit" id="btnInstaSelect" style="float: left;" />
            </span>
            <div class="divinstaImages"></div>
        </div>

    </form>
</asp:Content>
