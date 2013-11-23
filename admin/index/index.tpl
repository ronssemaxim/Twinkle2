$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-home4"></span>&nbsp;
					{$lng['panel']['dashboard']}
				</h2>
			</header>
		</div>

		<div class="row visible-xs visible-sm visible-md visible-lg">
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
				<ul class="list-group">
					<li class="list-group-item">
						<h4 class="list-group-item-heading">
							<span class="icon-clock3"></span> Last Cronjobs
						</h4>
					</li>
					
					{$cron_last_runs}
				</ul>
			</div>
			
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
				<ul class="list-group">
					<li class="list-group-item">
						<h4 class="list-group-item-heading">
							<span class="icon-globe2"></span> {$lng['admin']['ressourcedetails']}
						</h4>
					</li>
				
					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['usedmax']}">{$overview['number_customers']} ({$userinfo['customers']})</span>
						{$lng['admin']['customers']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['usedmax']}">{$overview['number_domains']} ({$userinfo['domains']})</span>
						{$lng['customer']['domains']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['subdomains_used']} ({$userinfo['subdomains_used']}/{$userinfo['subdomains']})</span>
						{$lng['customer']['subdomains']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['diskspace_used']} ({$userinfo['diskspace_used']}/{$userinfo['diskspace']})</span>
						{$lng['customer']['diskspace']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['traffic_used']} ({$userinfo['traffic_used']}/{$userinfo['traffic']})</span>
						{$lng['customer']['traffic']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['mysqls_used']} ({$userinfo['mysqls_used']}/{$userinfo['mysqls']})</span>
						{$lng['customer']['mysqls']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['emails_used']} ({$userinfo['emails_used']}/{$userinfo['emails']})</span>
						{$lng['customer']['emails']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['email_accounts_used']} ({$userinfo['email_accounts_used']}/{$userinfo['email_accounts']})</span>
						{$lng['customer']['accounts']}
					</li>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['email_forwarders_used']} ({$userinfo['email_forwarders_used']}/{$userinfo['email_forwarders']})</span>
						{$lng['customer']['forwarders']}
					</li>

					<if $settings['system']['mail_quota_enabled'] == 1>
						<li class="list-group-item">
							<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['email_quota_used']} ({$userinfo['email_quota_used']}/{$userinfo['email_quota']})</span>
							{$lng['customer']['email_quota']}
						</li>
					</if>

					<if $settings['autoresponder']['autoresponder_active'] == 1>
						<li class="list-group-item">
							<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$userinfo['email_autoresponder_used']} ({$userinfo['email_autoresponder']})</span>
							{$lng['customer']['autoresponder']}
						</li>
					</if>

					<if $settings['ticket']['enabled'] == 1>
						<li class="list-group-item">
							<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$userinfo['email_autoresponder_used']} ({$userinfo['email_autoresponder']})</span>
							{$lng['customer']['autoresponder']}
						</li>
					</if>

					<li class="list-group-item">
						<span class="badge" title="{$lng['admin']['used']} ({$lng['admin']['assignedmax']})">{$overview['tickets_used']} ({$userinfo['tickets_used']}/{$userinfo['tickets']})</span>
						{$lng['customer']['tickets']}
					</li>
				</ul>
			</div>

			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
				<ul class="list-group" id="froxlordetails">
					<li class="list-group-item">
						<h4 class="list-group-item-heading">
							<span class="icon-cogs" title="{$lng['admin']['froxlordetails']}"></span> {$lng['admin']['froxlordetails']}
						</h4>
					</li>
					
					<li class="list-group-item">
						<span class="pull-right">{$version}{$branding}</span>
						{$lng['admin']['installedversion']}
					</li>

					<li class="list-group-item">
						<if $isnewerversion != 0 >
							<span class="pull-right"><a href="$lookfornewversion_link"><strong>$lookfornewversion_lable</strong></a></span>
						<else>
							<span class="pull-right"><a href="$lookfornewversion_link">$lookfornewversion_lable</a></span>
						</if>
						{$lng['admin']['latestversion']}
					</li>

					<if $lookfornewversion_addinfo != ''>
						<li class="list-group-item">							
							$lookfornewversion_addinfo
						</li>
					</if>

					{$outstanding_tasks}
				</ul>
			</div>

			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
				<ul class="list-group">
					<li class="list-group-item">
						<h4 class="list-group-item-heading">
							<span class="icon-shield"></span> {$lng['admin']['systemdetails']}
						</h4>
					</li>

					<li class="list-group-item">
						<span class="pull-right">{$_SERVER['SERVER_SOFTWARE']}</span>
						{$lng['admin']['serversoftware']}
					</li>

					<li class="list-group-item">
						<span class="pull-right">$phpversion</span>
						{$lng['admin']['phpversion']}
					</li>

					<li class="list-group-item">
						<span class="pull-right">$mysqlserverversion</span>
						{$lng['admin']['mysqlserverversion']}
					</li>

					<li class="list-group-item">
						<span class="pull-right">$webserverinterface</span>
						{$lng['admin']['webserverinterface']}
					</li>

					<li class="list-group-item">
						<span class="pull-right">$load</span>
						{$lng['admin']['sysload']}
					</li>

					<if $showkernel == 1>
						<li class="list-group-item">
							<span class="pull-right">$kernel</span>
							Kernel
						</li>
					</if>

					<if $uptime != ''>
						<li class="list-group-item">
							<span class="pull-right">$uptime</span>
							Uptime
						</li>
					</if>
				</ul>
			</div>
		</div>
	</article>
$footer

