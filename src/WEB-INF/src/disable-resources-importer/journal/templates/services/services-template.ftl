<style type="text/css">
    .services-wrapper {
        padding-bottom: 15px;
    }
    .services-wrapper a {
        color: inherit;
        text-decoration: none;
        padding-bottom: 15px;
    }
</style>

<#assign col = Columns.getData()?number>

<div class="services-wrapper bg-primary">
    <div class="container">
        <div class="text-center">
            <div class="col-lg-10 col-lg-offset-1">
                <h2>${ServicesTitle.getData()}</h2>
                <hr class="small">
            <#if Service.getSiblings()?has_content>
                <div class="row">
                    <#list Service.getSiblings() as item>
                        <div class="col-md-${12/col} col-sm-${(12/col) * 2}">
                            <div class="service-item">
                                <a href="${item.Link.getData()}">
                                    <span class="icon-stack icon-4x">
                                        <i class="icon-circle icon-2x"></i>
                                        <i class="${item.Icon.getData()} text-primary"></i>
                                    </span>
                                    <h4>
                                        <strong>${item.Name.getData()}</strong>
                                    </h4>
                                    <p>${item.Description.getData()}</p>
                                 </a>
                            </div>
                        </div>
                    </#list>
                </div>
            </#if>
            </div>
        </div>
    </div>
</div>