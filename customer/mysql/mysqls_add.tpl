$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-drawer3"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'mysql'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive" id="mysql_add">
						{$mysql_add_form}
					</table>

					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	</article>
$footer