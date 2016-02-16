<!-- <input id="tv{$tv->id}" name="tv{$tv->id}"
	type="hidden"
	value="{$tv->get('value')|escape}"
/> -->

<div id="tv-tvss-{$tv->id}"></div>



<script type="text/javascript">
// <![CDATA[
{literal}
Ext.onReady(function()
{
	var _defaultItems = {/literal}{if $tv->value}{$tv->value}{else}[]{/if}{literal},
		defaultItems = [];

	if (Ext.isArray(_defaultItems))
	{
		Ext.each(_defaultItems, function(item)
		{
			defaultItems.push({
				'value': item,
			});
		});
	}

	var fld{/literal}{$tv->id}{literal} = MODx.load({
	{/literal}
		xtype: 'tvss-minishop2-combo-options',
		renderTo: 'tv-tvss-{$tv->id}',
		name: 'tvss-option-{$tv->id}',
		tv_id: '{$tv->id}',
		defaultItems: defaultItems,
	{literal}
	});

	fld{/literal}{$tv->id}{literal}.setWidth('auto')
	fld{/literal}{$tv->id}{literal}.positionEl.setWidth('auto')

	// fld{/literal}{$tv->id}{literal}.inputEl.setWidth('auto')
	// fld{/literal}{$tv->id}{literal}.inputEl.setStyle('width:100%;')
	// fld{/literal}{$tv->id}{literal}.inputEl.applyStyles('width:100%;')

	var tvssInputSelect = fld{/literal}{$tv->id}{literal}.inputEl.select('input')

	if (typeof tvssInputSelect != 'undefined' && Ext.isArray(tvssInputSelect.elements) && tvssInputSelect.elements.length > 0)
	{
		tvssInputSelect.elements[0].className += ' tvss-input';
	}
});
{/literal}
// ]]>
</script>