(function(module) {
	"use strict";

	var Plugin = {};

	Plugin.defineWidgetAreas = function(areas, callback) {
		areas = areas.concat([
			{
				'name': 'Recent Page Header',
				'template': 'recent.tpl',
				'location': 'hp-header'
			},
			{
				'name': 'Recent Page Sidebar',
				'template': 'recent.tpl',
				'location': 'hp-sidebar'
			}
		]);

		callback(null, areas);
	};

	module.exports = Plugin;
}(module));
