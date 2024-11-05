<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        ${msg("termsTitle")}
    <#elseif section = "form">
    <style>
            ul {
                list-style: inside
            }

            .toc p {
                color: #a0aec0 !important
            }

            .card-pf {
                max-width: 720px
            }

            #kc-terms-text {
                margin-bottom: 30px
            }

            .pf-c-button.pf-m-danger {
                margin-left: 10px
            }

    </style>
    <div id="kc-terms-text">
         <div style="overflow-y: scroll; height: 450px; padding: 10px; background-color: #000716;"> ${msg("termsText")?no_esc} </div> 
    </div>
    <form class="form-actions" action="${url.loginAction}" method="POST">
        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="accept" id="kc-accept" type="submit" value="${msg("doAccept")}"/>
        <input class="${properties.kcButtonClass!}  ${properties.kcButtonDangerClass!} ${properties.kcButtonLargeClass!}" style="height: 3rem;" name="cancel" id="kc-decline" type="submit" value="${msg("doDecline")}"/>
    </form>
    <div class="clearfix"></div>
    </#if>
</@layout.registrationLayout>