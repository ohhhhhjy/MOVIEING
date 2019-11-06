<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="page-wrapper">
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-line-chart"></i> Live Statistics <a class="pull-right glyphicon glyphicon-option-horizontal" href="#" style="text-decoration:none;"></a></h3>
                </div>
                <div class="panel-body">
                    <div id="chart_live" style="width:100%; height:250px;"></div>
                </div>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-eye"></span> Views</h4>
                        <h3>1450</h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-file-video-o"></span> Pages</h4>
                        <h3>327</h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-users"></span> Users</h4>
                        <h3>119</h3>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                        <h4><span class="fa fa-money"></span> Earnings</h4>
                        <h3>$14.58</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-calendar"></i> Calendar</h3>
                        </div>
                        <div class="panel-body text-center">
                            <div id="calendar1"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-gear"></i> Settings</h3>
                        </div>
                        <div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item">
									<span class="label label-default">Label Default</span>
									<div class="pull-right">
										<input id="switch1" name="switch1" type="checkbox" />
									</div>
								</li>
								<li class="list-group-item">
									<span class="label label-success">Label Success</span>
									<div class="pull-right">
										<input id="switch2" name="switch2" type="checkbox" />
									</div>
								</li>
								<li class="list-group-item">
									<span class="label label-primary">Label Primary</span>
									<div class="pull-right">
										<input id="switch3" name="switch3" type="checkbox" checked="checked" />
									</div>
								</li>
								<li class="list-group-item">
									<span class="label label-info">Label Info</span>
									<div class="pull-right">
										<input id="switch4" name="switch4" type="checkbox" checked="checked" />
									</div>
								</li>
								<li class="list-group-item">
									<span class="label label-warning">Label Warning</span>
									<div class="pull-right">
										<input id="switch5" name="switch4" type="checkbox" />
									</div>
								</li>
								<li class="list-group-item">
									<span class="label label-danger">Label Danger</span>
									<div class="pull-right">
										<input id="switch6" name="switch4" type="checkbox" checked="checked" />
									</div>
								</li>
							</ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-comments"></i> Messages <a class="pull-right fa fa-gear" href="#" style="text-decoration:none;"></a></h3>
                </div>
                <div class="panel-body">
                    <div style="width:100%; height:250px;">
                        <ul class="media-list">
                            <li class="media">
                                <div class="media-left">
                                    <img class="media-object" src="<c:url value='/resources/images/user1.jpg'/>" style="width:64px; height:64px; border-radius:50%; border:solid 1px #E1E1E1;" />
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Jack Sparrow <small class="pull-right" style="color:#b6b6b6; margin-right:10px;"><i class="fa fa-clock-o"></i> 14 min ago</small></h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="media-left">
                                    <img class="media-object" src="<c:url value='/resources/images/user2.jpg'/>" style="width:64px; height:64px; border-radius:50%; border:solid 1px #E1E1E1;" />
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Captain Cook <small class="pull-right" style="color:#b6b6b6; margin-right:10px;"><i class="fa fa-clock-o"></i> 29 min ago</small></h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </li>
                        </ul>
                        <a href="#" class="btn btn-primary pull-right">View All Messages</a>
                    </div>
                </div>
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-keyboard-o"></i> Keywords</h3>
                </div>
                <div class="panel-body text-center">
                    <div id="tagcloud"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-pie-chart"></i> Web Browser</h3>
                        </div>
                        <div class="panel-body">
                            <div id="chart_browsers" style="width:100%; height:200px;"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="glyphicon glyphicon-flag"></i> Overall Progress</h3>
                        </div>
                        <div class="panel-body">
                            <div id="progress" style="width:100%; height:200px; margin:auto;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</div>

