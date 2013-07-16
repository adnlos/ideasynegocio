/* Load this script using conditional IE comments if you need to support IE 7 and IE 6. */

window.onload = function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'icomoon\'">' + entity + '</span>' + html;
	}
	var icons = {
			'icon-aid' : '&#xe001;',
			'icon-tags' : '&#xe002;',
			'icon-wrench' : '&#xe004;',
			'icon-library' : '&#xe005;',
			'icon-food' : '&#xe006;',
			'icon-gift' : '&#xe008;',
			'icon-star' : '&#xe009;',
			'icon-dribbble' : '&#xe00a;',
			'icon-omega' : '&#xe003;',
			'icon-accessibility' : '&#xe00b;',
			'icon-user' : '&#xe00c;',
			'icon-bubble' : '&#xe00d;',
			'icon-bubbles' : '&#xe00e;',
			'icon-cog' : '&#xe007;',
			'icon-shield' : '&#xe00f;',
			'icon-github' : '&#xe010;',
			'icon-cart' : '&#xe000;',
			'icon-users' : '&#xe011;',
			'icon-switch' : '&#xe012;',
			'icon-strikethrough' : '&#xe013;',
			'icon-leaf' : '&#xe014;',
			'icon-truck' : '&#xe015;'
		},
		els = document.getElementsByTagName('*'),
		i, attr, html, c, el;
	for (i = 0; ; i += 1) {
		el = els[i];
		if(!el) {
			break;
		}
		attr = el.getAttribute('data-icon');
		if (attr) {
			addIcon(el, attr);
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
};