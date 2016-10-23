<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-4">
          <h5><?php echo $text_information; ?></h5><br>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-4">
        <h5>Follow us on</h5><br>
        <a href="https://www.facebook.com/Faasos" target="_blank" class="bottomnav_opt_circle bottomnav_opt_circle_first">
            <img src="catalog/view/theme/food/image/FSfb.png" alt="" style="visibility: visible; ; visibility: visible; "></a>
        <a href="https://twitter.com/faasos" target="_blank" class="bottomnav_opt_circle">
            <img src="catalog/view/theme/food/image/FStw.png" alt="" style="visibility: visible; ; visibility: visible; "></a>
        <a href="https://www.youtube.com/user/Faasosciation" target="_blank" class="bottomnav_opt_circle">
            <img src="catalog/view/theme/food/image/FSyt.png" alt="" style="visibility: visible; ; visibility: visible; "></a>
        <a href="https://www.instagram.com/faasosapp/" target="_blank" class="bottomnav_opt_circle">
            <img src="catalog/view/theme/food/image/FSinsta.png" alt="" style="visibility: visible; ; visibility: visible; "></a>
        <br><br><br>
        <h5>Get in touch</h5><br>
        <p class="getInTouchContainer">
            <span class="faasos-phone"></span>
            <span class="getInTouch">+91-8699607824, +91-9780151807</span></p>
        <p class="getInTouchContainer"><span class="faasos-email-filled"></span>
            <a href="mailto:crm@faasos.com" class="bottomnav_opt getInTouch">support@hff.com</a></p>
        <br><br>
      </div>
      <div class="col-sm-4">
          <h5>Enquiry Form</h5><br>
          <form>
              <input type="text" placeholder='Enter Your Email'/>
              <textarea placeholder='Enter your messsage here...'></textarea>
              <a>Submit</a>
          </form>
      </div>
    </div>
  </div>
    <div class="footer-copyright">  
        <div class="container">
            <div class="row">
                <div class="col-sm-6 help-line-number">
                    <p>Delivering at your doorstep</p>
                </div>
                <div class="col-sm-6 copyright"><p><?php echo date('Y');?> &copy; Hot Fast Food Pvt. Ltd.</p></div>

            </div>
        </div>
    </div>
</footer>
</body></html>