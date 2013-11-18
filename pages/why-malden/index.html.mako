<%!
  basepath = '../..'
  nav = 'why-malden'
%><%inherit file="/layouts.mako/bim.html"/>
<%namespace file="/layouts.mako/base.html" import="*"/>
<div class="row">
  <div class="testimonials col-sm-10 col-sm-offset-1 col-md-9 col-md-offset-2">
    <ul class="list-unstyled">
      <li class="testimonial">
        <big></big>
        <a href="#show-more">Read more</a>
        <em class="source"></em>
      </li>
    </ul>

    <a class="left control" href="#testimonials" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right control" href="#testimonials" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
  </div>
</div>

<div class="row">
  <div class="col-md-7">
    <h2>Community Benefits</h2>
    <div class="row">
      <div class="col-xs-6 col-md-3 text-center">
        <a href="#" class="thumbnail">
          <img src="${base_url(self, 'img/bim-logo.svg')}" style="height: 5em; "/>
          <h3>Home Loans</h3>
        </a>
      </div><div class="col-xs-6 col-md-3 text-center">
        <a href="#" class="thumbnail">
          <img src="${base_url(self, 'img/bim-logo.svg')}" style="height: 5em; "/>
          <h3>Tuition Assistance</h3>
        </a>
      </div><div class="col-xs-6 col-md-3 text-center">
        <a href="#" class="thumbnail">
          <img src="${base_url(self, 'img/bim-logo.svg')}" style="height: 5em; "/>
          <h3>School Bus</h3>
        </a>
      </div>
    </div>

    <h2>Religious Services</h2>
    <div class="row">
      <div class="col-xs-6 col-md-3 text-center">
        <a href="#" class="thumbnail">
          <img src="${base_url(self, 'img/bim-logo.svg')}" style="height: 5em; "/>
          <h3>Mikvah</h3>
        </a>
      </div><div class="col-xs-6 col-md-3 text-center">
        <a href="#" class="thumbnail">
          <img src="${base_url(self, 'img/bim-logo.svg')}" style="height: 5em; "/>
          <h3>Eruv</h3>
        </a>
      </div><div class="col-xs-6 col-md-3 text-center">
        <a href="#" class="thumbnail">
          <img src="${base_url(self, 'img/bim-logo.svg')}" style="height: 5em; "/>
          <h3>Minyan</h3>
        </a>
      </div><div class="col-xs-6 col-md-3 text-center">
        <a href="#" class="thumbnail">
          <img src="${base_url(self, 'img/bim-logo.svg')}" style="height: 5em; "/>
          <h3>Kosher Food</h3>
        </a>
      </div>
    </div>
  </div><div class="col-md-5">
    <h2>Schedule a Visit</h2>
    <form class="well" role="form" action="https://spreadsheets.google.com/spreadsheet/formResponse?formkey=dHY4c3BKZDRiN2dhZlo2M1hEYVk3Tmc6MQ&amp;embedded=true&amp;ifq" method="POST">
      <p>Please complete this form. All fields are required.</p>
      <div class="form-group">
        <label for="entry_0">Name</label>
        <input type="text" id="entry_0" name="entry.0.single" value="" class="form-control" aria-required="true" required="" />
        <span class="help-block">We'd love to know who you are!</span>
      </div><div class="form-group">
        <label for="entry_1">Contact information</label>
        <input type="text" id="entry_1" name="entry.1.single" value="" class="form-control" aria-required="true" required="" />
        <span class="help-block">What's the best way for us to reach you?</span>
      </div><div class="form-group">
        <input type="hidden" name="pageNumber" value="0" />
        <input type="hidden" name="backupCache" value="" />
        <input type="submit" name="submit" value="Submit" class="btn btn-primary"/>
      </div>
    </form>
  </div>
</div>

<div id="testimonial-modal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <div class="testimonial-content"></div>
      </div>
    </div>
  </div>
</div>

<%block name="scripts">
<script>require(["${base_url(self, 'app/why-malden')}"]);</script>
</%block>
