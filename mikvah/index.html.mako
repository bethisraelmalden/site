<!DOCTYPE html><%!
  title = 'Congregation Beth Israel (Malden, MAX)'
  url_bim = 'http://bethisraelmalden.org'
  url_directions = 'https://mapsengine.google.com/map/edit?mid=zSZg6r3oJwJ8.k894bUrdtCoI'
%><html lang="en"><head>
<meta charset="utf-8" />
<meta http-equi="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mikvah Mayanei Tovah (Beth Israel of Malden)</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/css/bootstrap.css" />
<link rel="stylesheet/less" href="mikvah.less" />
<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/1.4.1/less.min.js"></script>
<!--[if lt IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script><![endif]-->
<%include file="/layouts.mako/google-analytics-mikvah.html"/>
</head><body>
<a id="top" href="#content" class="sr-only">Skip to content</a>

<div class="background"></div>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="${url_bim}">
      <img src="bim-logo.svg" />
      <span>Beth Israel Malden</span>
    </a>
  </div>

  <div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li><a href="#make-appointment" data-toggle="modal">Request Appointment</a></li>
      <li class="disabled"><a href="#">Preparations</a></li>
      <li><a href="#get-directions" data-toggle="modal">Directions</a></li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>

<div class="top-container container">
  <div class="row">
    <div class="col-sm-4 col-sm-offset-4">
      <div id="flash" class="hidden alert text-center">
        <button type="button" class="close">&times;</button>
        <span class="msg"></span>
      </div>
    </div>
  </div>
</div>
<div id="content" class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 col-md-offset-2 text-center">
      <h1 class="mikvah-name">Mikvah Mayanei Tovah</h1>
      <p class="lead">The new mikvah in Malden is now open for business!</p>
      <p><strong>All visits by appointment only.</strong></p>
      <p>
        <a href="#make-appointment" class="btn btn-primary btn-lg"
           data-toggle="modal">Request Appointment</a>
      </p><p>
        <a href="mailto:mikvah@bethisraelmalden.org">mikvah@bethisraelmalden.org</a>
        <span class="hidden">&bull; <a href="tel:+17813333202">781-333-3202</a></span>
      </p>
    </div><div class="col-xs-2 visible-xs">&nbsp;
    </div><div class="col-xs-10 col-sm-6 col-md-3 col-md-offset-1">
      <h3>What you need to know</h3>
      <dl class="">
        <dt>Cost</dt>
        <dd>$25 per visit</dd>

        <dt>Address</dt>
        <dd>
          <i class="glyphicon glyphicon-map-marker"></i>
          <a href="#get-directions" data-toggle="modal">
            10 Dexter St, Malden MA 02148
          </a>
        </dd>

        <dt>Parking</dt>
        <dd>
          Far-side of the large parking lot on Dexter St, closest to the
          building.
        </dd>
      </dl>
    </div>
  </div>
</div>

<div id="make-appointment" class="modal fade">
  <form class="modal-dialog form-horizontal" action="appointment.php"
        method="post" role="form">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Request an Appointment</h4>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label id="label-name" for="appt-name" class="col-sm-4 control-label">Your Name</label>
          <div class="col-sm-8">
            <input type="text" id="appt-name" name="appt-name"
                   class="form-control" placeholder="Your Name" />
          </div>
        </div><div class="form-group">
          <label for="appt-phone" class="col-sm-4 control-label">Phone Number</label>
          <div class="col-sm-8">
            <input type="tel" id="appt-phone" name="appt-phone"
                   class="form-control" placeholder="Phone Number" />
          </div>
        </div><div class="form-group">
          <label id="" for="appt-date" class="col-sm-4 control-label">Requested Date</label>
          <div class="col-sm-8">
            <input type="text" id="appt-date" name="appt-date"
                   class="form-control date" value="" />
          </div>
        </div><div class="form-group">
          <p class="help-block text-center">
            A mikvah attendant will contact you within 24 hours to make final
            arrangements.
          </p>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-primary" data-loading-text="Requesting...">Request</button>
      </div>
    </div><!-- /.modal-content -->
  </form><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div id="get-directions" class="modal fade">
  <form class="modal-dialog form-horizontal" action="http://maps.google.com/maps"
        method="get" target="_blank" role="form">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Get Directions</h4>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label for="saddr" class="col-sm-4 control-label">Your Address</label>
          <div class="col-sm-8">
            <input type="text" id="saddr" name="saddr" class="form-control"
                   placeholder="Your address" />
            <input type="hidden" name="daddr" value="10 Dexter St, Malden, MA 02148" />
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-primary">Get Directions</button>
      </div>
    </div><!-- /.modal-content -->
  </form><!-- /.modal-dialog -->
</div><!-- /.modal -->

<footer class="text-center">
  <p>
    &copy; 2013 by <a href="http://bethisraelmalden.org">Congregation Beth Israel</a>.
    Site by <a href="http://metaist.com">Metaist</a>.
  </p>
</footer>

<script data-main="mikvah" src="//cdnjs.cloudflare.com/ajax/libs/require.js/2.1.9/require.min.js"></script>
</body></html>
