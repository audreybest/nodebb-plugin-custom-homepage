<div widget-area="hp-header">
	<!-- BEGIN widgets -->
    {widgets.html}
	<!-- END widgets -->
</div>
<div class="row">
	<div class="recent col-lg-12 col-sm-12" has-widget-class="col-lg-9 col-sm-12" has-widget-target="hp-sidebar">

		<!-- IMPORT partials/breadcrumbs.tpl -->

		<div class="btn-toolbar">
			<div class="pull-left">
				<!-- IF loggedIn -->
				<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
				<!-- ELSE -->
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
				<!-- ENDIF loggedIn -->
			</div>

			<div class="btn-group pull-right">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					<!-- IF selectedCategory --><!-- IF selectedCategory.icon --><i class="fa fa-fw {selectedCategory.icon}"></i><!-- ENDIF selectedCategory.icon --> {selectedCategory.name}<!-- ELSE -->
					[[unread:all_categories]]<!-- ENDIF selectedCategory --> <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li role="presentation" class="category">
						<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
					</li>
					<!-- BEGIN categories -->
					<li role="presentation" class="category" data-cid="{categories.cid}">
						<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}?cid={categories.cid}"><i class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i>{categories.level}<!-- IF categories.icon --><i class="fa fa-fw {categories.icon}"></i><!-- ENDIF categories.icon --> {categories.name}</a>
					</li>
					<!-- END categories -->
				</ul>
			</div>

			<div class="btn-group pull-right">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				{selectedFilter.name} <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<!-- BEGIN filters -->
					<li role="presentation" class="category">
						<a role="menu-item" href="{config.relative_path}/{filters.url}{querystring}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
					</li>
					<!-- END filters -->
				</ul>
			</div>
		</div>

		<br/><br/>

		<a href="{config.relative_path}/{selectedFilter.url}{querystring}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">
			<strong>[[recent:no_recent_topics]]</strong>
		</div>
		<!-- ENDIF !topics.length -->

		<div class="category row">
			<div>
				<!-- IMPORT partials/topics_list.tpl -->
			</div>
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
	<div widget-area="hp-sidebar" class="col-md-3 col-xs-12 hidden">
		<!-- BEGIN widgets -->
        {widgets.html}
		<!-- END widgets -->
	</div>
</div>