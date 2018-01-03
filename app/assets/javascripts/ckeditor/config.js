CKEDITOR.editorConfig = function( config )
{
	config.toolbar = 'MyToolbar';
	config.uiColor = '#FFFFFF';
	config.removePlugins = 'elementspath';
	config.resize_enabled = false;
	config.toolbar_MyToolbar =
	[
		{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','-','RemoveFormat' ] },
		{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','-','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
		{ name: 'insert', items: ['HorizontalRule']},
		{ name: 'tools', items : [ 'Maximize'] }
	];
};
