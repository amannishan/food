<div class="panel panel-default">
 
    <div class="list-group">
        <a class="list-group-item manufacture-module"><i class="fa fa-chevron-circle-right"></i><i class="fa fa-chevron-circle-down dpn"></i>Filter</a>
        <div class="dpn refine-search">
            <?php foreach ($filter_groups as $filter_group) { ?>
            <a class="list-group-item filter-module"><?php echo $filter_group['name']; ?></a>

            <div class="list-group-item">
                <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
                    <?php foreach ($filter_group['filter'] as $filter) { ?>
                    <div class="checkbox">
                        <label>
                            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
                            <?php echo $filter['name']; ?>
                            <?php } else { ?>
                            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
                            <?php echo $filter['name']; ?>
                            <?php } ?>
                        </label>
                    </div>
                    <?php } ?>
                </div>
            </div>


            <?php } ?>
            <div class="panel-footer text-right">
                <button type="button" id="button-filter" class="btn view-product-btn"><?php echo $button_filter; ?></button>
            </div>
        </div>
        
    </div>

</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
