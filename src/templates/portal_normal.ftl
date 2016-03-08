<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class} pt" id="main-surface">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
    <header id="top" class="header">
        <div class="text-vertical-center">
            <div class="main-selector">
                <@liferay_portlet["runtime"] portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" instanceId="XXXXLGQC3bGz"/>
            </div>
        </div>
    </header>
	<div></div>
    <section id="content">
        <h1 class="hide-accessible">${the_title}</h1>


        <#if selectable>
            <@liferay_util["include"] page=content_include />
        <#else>
        ${portletDisplay.recycle()}

        ${portletDisplay.setTitle(the_title)}

            <@liferay_theme["wrap-portlet"] page="portlet.ftl">
                <@liferay_util["include"] page=content_include />
            </@>
        </#if>
    </section>


    <footer id="footer" role="contentinfo">

        <div class="btn-row social">
            <span class="icon-3x icon-twitter-sign"></span>
            <span class="icon-3x icon-facebook-sign"></span>
            <span class="icon-3x icon-linkedin-sign"></span>
            <span class="icon-3x icon-google-plus-sign"></span>
        </div>
        <p class="powered-by">
            <@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
        </p>
    </footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>