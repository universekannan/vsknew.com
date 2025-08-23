<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>VSK Brothers</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
        <!-- PWA  -->
        <meta name="theme-color" content="#6777ef"/>
        <link rel="apple-touch-icon" href="<?php echo e(asset('public/logo.png')); ?>">
        <link rel="manifest" href="<?php echo e(asset('public/manifest.json')); ?>">
    </head>
    <body>
        <div class="flex-center position-ref full-height">
              <div class="top-right links">
                        <a href="<?php echo e(url('/dashboard')); ?>">Home</a>
                        <a href="<?php echo e(url('login')); ?>">Login</a>
 
                     <?php if(Route::has('register')): ?>
                            <a href="<?php echo e(route('register')); ?>">Register</a>
                        <?php endif; ?> 
                </div> 

            <div class="content">
                <div class="title m-b-md">
                    <a href="<?php echo e(url('login')); ?>"><img src="<?php echo e(URL::to('/')); ?>/logo.png" ></a>
                </div>
            </div>
        </div>
        <script src="<?php echo e(asset('public/sw.js')); ?>"></script>
        <script>
            if (!navigator.serviceWorker.controller) {
                navigator.serviceWorker.register("public/sw.js").then(function (reg) {
                    console.log("Service worker has been registered for scope: " + reg.scope);
                });
            }
        </script>
    </body>
</html>
<?php /**PATH C:\xampp\htdocs\vsknew.com\resources\views/welcome.blade.php ENDPATH**/ ?>