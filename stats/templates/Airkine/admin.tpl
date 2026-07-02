<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>$phpstats_title</title>
    $meta
    
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.21.5/dist/css/uikit.min.css" />
    
    <!-- Eventuale foglio di stile personalizzato se serve sovrascrivere qualcosa -->
    <link rel='stylesheet' href='./templates/Airkine/styles.css' type='text/css'>
    
    <!-- UIkit JS -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.21.5/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.21.5/dist/js/uikit-icons.min.js"></script>
    <script src='templates/default/functions.js' type='text/javascript'></script>
    $autorefresh
    
    <style>
        /* Ottimizzazione per una dashboard con sidebar fissa su schermi grandi */
        @media (min-width: 960px) {
            .sidebar-fixed {
                position: fixed;
                top: 80px;
                bottom: 0;
                left: 0;
                width: 240px;
                overflow-y: auto;
                padding: 40px;
                box-sizing: border-box;
            }
            .content-pad {
                margin-left: 240px;
            }
        }
        /* Ripristino stile per i tuoi link del menu */
        .sidebar-nav .uk-nav-sub {
            padding-left: 15px;
        }
    </style>
</head>
<body class="uk-background-muted">

    <!-- HEADER / NAVBAR -->
    <div uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky">
        <nav class="uk-navbar-container uk-navbar-transparent uk-background-primary uk-light" uk-navbar>
            <div class="uk-navbar-left uk-margin-left">
                <a class="uk-navbar-item uk-logo" href="admin.php?action=main">
                    <span class="uk-text-bold">$option[nomesito]</span>
                </a>
            </div>
            <div class="uk-navbar-right uk-margin-right">
                <!-- Pulsante per menu mobile (visibile solo su smartphone/tablet) -->
                <a class="uk-navbar-toggle uk-hidden@m" uk-toggle="target: #mobile-sidebar" uk-navbar-toggle-icon href="#"></a>
            </div>
        </nav>
    </div>

    <div class="uk-container uk-container-expand uk-margin-top">
        <div uk-grid class="uk-grid-medium">
            
            <!-- SIDEBAR DESKTOP (Nascosta su schermi piccoli) -->
            <div class="uk-width-1-4@m uk-visible@m">
                <div class="sidebar-fixed uk-card uk-card-default uk-card-body uk-padding-small uk-border-rounded">
                    <ul class="uk-nav-default uk-nav-parent-icon sidebar-nav" uk-nav>
                        <li class="uk-nav-header">Navigazione</li>
                        <li><a href="admin.php?action=main"><span uk-icon="icon: home; cls: uk-margin-small-right"></span> $admin_menu[main]</a></li>
                        
                        <li class="uk-nav-divider"></li>

                        <!--Begin details-->
                        <li><a href="admin.php?action=details"><span uk-icon="icon: info; cls: uk-margin-small-right"></span> $admin_menu[details]</a></li>
                        <!--End details-->

                        <!--Begin systems-->
                        <li><a href="admin.php?action=os_browser">$admin_menu[os_browser]</a></li>
                        <li><a href="admin.php?action=reso">$admin_menu[reso]</a></li>
                        <li><a href="admin.php?action=systems">$admin_menu[systems]</a></li>
                        <!--End sytems-->

                        <!--Begin pages_time-->
                        <li><a href="admin.php?action=pages">$admin_menu[pages]</a></li>
                        <li><a href="admin.php?action=percorsi">$admin_menu[percorsi]</a></li>
                        <li><a href="admin.php?action=time_pages">$admin_menu[time_pages]</a></li>
                        <!--End pages_time-->

                        <!--Begin referer_engines-->
                        <li><a href="admin.php?action=referer">$admin_menu[referer]</a></li>
                        <li><a href="admin.php?action=engines">$admin_menu[engines]</a></li>
                        <li><a href="admin.php?action=query">$admin_menu[query]</a></li>
                        <li><a href="admin.php?action=searched_words">$admin_menu[searched_words]</a></li>
                        <!--End referer_engines-->

                        <!--Begin hourly-->
                        <li><a href="admin.php?action=hourly">$admin_menu[hourly]</a></li>
                        <!--End hourly-->

                        <!--Begin daily_monthly-->
                        <li><a href="admin.php?action=daily">$admin_menu[daily]</a></li>
                        <li><a href="admin.php?action=weekly">$admin_menu[weekly]</a></li>
                        <li><a href="admin.php?action=monthly">$admin_menu[monthly]</a></li>
                        <li><a href="admin.php?action=calendar">$admin_menu[calendar]</a></li>
                        <li><a href="admin.php?action=compare">$admin_menu[compare]</a></li>
                        <!--End daily_monthly-->

                        <!--Begin ip-->
                        <li><a href="admin.php?action=ip">$admin_menu[ip]</a></li>
                        <!--End ip-->

                        <!--Begin country-->
                        <li><a href="admin.php?action=country">$admin_menu[country]</a></li>
                        <!--End country-->

                        <!--Begin bw_lang-->
                        <li><a href="admin.php?action=bw_lang">$admin_menu[bw_lang]</a></li>
                        <!--End bw_lang-->

                        <!--Begin links-->
                        <li><a href="admin.php?action=links">$admin_menu[links]</a></li>
                        <!--End links-->

                        <!--Begin downloads-->
                        <li><a href="admin.php?action=downloads">$admin_menu[downloads]</a></li>
                        <!--End downloads-->

                        <!--Begin clicks-->
                        <li><a href="admin.php?action=clicks">$admin_menu[clicks]</a></li>
                        <!--End clicks-->

                        <!--Begin daily_monthly-->
                        <li><a href="admin.php?action=trend">$admin_menu[trend]</a></li>
                        <!--End daily_monthly-->
                        
                        <!--Begin is_loged_in-->
                        <li class="uk-nav-divider"></li>
                        <li class="uk-nav-header">Amministrazione</li>
                        <li><a href="admin.php?action=preferenze"><span uk-icon="icon: settings; cls: uk-margin-small-right"></span> $admin_menu[options]</a></li>
                        <!--Begin modify config-->
                        <li><a href="admin.php?action=modify_config">$admin_menu[modifyconfig]</a></li>
                        <!--End modify config-->
                        <li><a href="admin.php?action=esclusioni">$admin_menu[esclusioni]</a></li>
                        <li><a href="admin.php?action=optimize_tables">$admin_menu[optimize_tables]</a></li>
                        <!--Begin downloads-->
                        <li><a href="admin.php?action=downadmin">$admin_menu[downadmin]</a></li>
                        <!--End downloads-->
                        <!--Begin clicks-->
                        <li><a href="admin.php?action=clicksadmin">$admin_menu[clicksadmin]</a></li>
                        <!--End clicks-->
                        <li><a href="admin.php?action=backup">$admin_menu[backup]</a></li>
                        <li><a href="admin.php?action=resett">$admin_menu[reset]</a></li>
                        <!--Begin errorlogviewer-->
                        <li><a href="admin.php?action=viewerrorlog"><span uk-icon="icon: warning; cls: uk-margin-small-right"></span> $admin_menu[errorlogviewer]</a></li>
                        <!--End errorlogviewer-->
                        <!--End is_loged_in-->
                        
                        <li class="uk-nav-divider"></li>
                        <li><a href="admin.php?action=$admin_menu[status_rev]"><span uk-icon="icon: sign-out; cls: uk-margin-small-right"></span> $admin_menu[status]</a></li>
                    </ul>
                </div>
            </div>

            <!-- CONTENUTO PRINCIPALE -->
            <div class="uk-width-3-4@m content-pad">
                <div class="uk-card uk-card-default uk-card-body uk-border-rounded uk-shadow-small" style="min-height: 70vh;">
                    $action
                </div>
                
                <!-- FOOTER -->
                <footer class="uk-margin-large-top uk-margin-bottom uk-text-center">
                    <strong>v{$option['phpstats_ver']}</strong>
                    <a class="uk-link-muted uk-text-small" href="https://bizzarri.altervista.org/php-stats/" target="_blank">
                        &#169;Roberto Bizzarri
                    </a>
                    - $server_time
                </footer>
            </div>
            
        </div>
    </div>

    <!-- SIDEBAR MOBILE (OFF-CANVAS) -->
    <div id="mobile-sidebar" uk-offcanvas="overlay: true">
        <div class="uk-offcanvas-bar">
            <button class="uk-offcanvas-close" type="button" uk-close></button>
            <ul class="uk-nav uk-nav-default">
                <!-- Qui replichi i link principali o puoi usare lo stesso output se preferisci mapparlo via PHP -->
                <li class="uk-nav-header">$option[nomesito]</li>
                <li><a href="admin.php?action=main">$admin_menu[main]</a></li>
                <!-- Aggiungi qui gli elementi essenziali per il mobile se necessario, oppure l'intero blocco se preferisci gestirlo dinamicamente -->
            </ul>
        </div>
    </div>

</body>
</html>