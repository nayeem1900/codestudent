

@extends('frontend.layouts.master')
@section('content')

    <section class="baner">

      <div class="container">

          <img src="{{url('frontend/image/n3.jpg')}}" style="width:100%;height:30%">
      </div>

    </section>

    <!--about us-->


    <section class="aboutus">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php
                    if(isset($_POST['submit'])){
                        $to = "nayeembd84@gmail.com"; // this is your Email address
                        $from = $_POST['email']; // this is the sender's Email address
                        $name = $_POST['name'];
                        $mobile_no = $_POST['mobile_no'];
                        $address = $_POST['address'];
                        $subject = "Form submission";
                        $subject2 = "Copy of your form submission";
                        $message = $name . " " . $mobile_no . " " .$address ." wrote the following:" . "\n\n" . $_POST['message'];
                        $message2 = "Here is a copy of your message " . $first_name . "\n\n" . $_POST['message'];

                        $headers = "From:" . $from;
                        $headers2 = "From:" . $to;
                        mail($to,$subject,$message,$headers);
                        mail($from,$subject2,$message2,$headers2); // sends a copy of the message to the sender
                        echo "Mail Sent. Thank you " . $first_name . ", we will contact you shortly.";
                        // You can also use header('Location: thank_you.php'); to redirect to another page.
                    }
                    ?>




                            <div class="row">
                                <div class="col-md-7">
                                    <h3 style="padding-top: 15px;
                    padding-bottom: 5px;
                    border-bottom: 1px solid black;
                    width:39%;">Send Us a Message</h3>
                                    <form action="mail.php" method="post">
                                        <div class="row" style="background: #ddd;">
                                            <div class="form-group col-md-6">
                                                <label for="name">Name<span style="color: red;font-weight: bold;">*</span></label>
                                                <input type="text" name="name" id="name"class="form-control" placeholder="Write Your Name">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="email">Email<span style="color: red;font-weight: bold;">*</span></label>
                                                <input type="email" name="email" id="email"class="form-control" placeholder="Write Your email">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="mobile_no">Mobile No<span style="color: red;font-weight: bold;">*</span></label>
                                                <input type="text" name="mobile_no" id="mobile_no"class="form-control" placeholder="Write Your Mobile NO">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="address">Address<span style="color: red;font-weight: bold;">*</span></label>
                                                <input type="text" name="address" id="address"class="form-control" placeholder="Write Your Address">
                                            </div>

                                            <div class="form-group col-md-12"style="padding-bottom: 5px;">
                                                <label for="message">Message<span style="color: red;font-weight: bold;">*</span></label>
                                                <textarea class="form-control"id="message" name="message" placeholder="Write Your Message" rows="5"></textarea>
                                            </div>
                                            <div class="form-group col-md-6" style="padding-bottom: 5px;">
                                                <input type="submit" name="submit" value="submit">
                                            </div>
                                        </div>
                                    </form>

                                </div>


                                    <div class="col-md-5">
                                        <h3 style="padding-top: 15px;
                    padding-bottom: 5px;
                    border-bottom: 1px solid black;
                    width:49%;">Office Location</h3>
                                     <div class="container">

                                         <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=islami%20bank%20nursing%20institute%20barisal&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-to.org"></a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href="https://www.embedgooglemap.net">embedgooglemap.net</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>


                                     </div>
                                    </div>

                            </div>




                </div>

            </div>
        </div>
    </section>



@endsection