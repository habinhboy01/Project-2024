<?php
/*

Template Name: Sign Up

*/

get_header(); ?>

	<div class="bg-login">
		<div class="container">	

			<h1 class="title-login">Đăng ký</h1>

			<?php if(is_user_logged_in()) { $user_id = get_current_user_id();$current_user = wp_get_current_user();$profile_url = get_author_posts_url($user_id);$edit_profile_url = get_edit_profile_url($user_id); ?>

				<div class="regted">
				    Bạn đã đăng nhập với tên nick <a href="<?php echo $profile_url ?>"><?php echo $current_user->display_name; ?></a> Bạn có muốn <a href="<?php echo esc_url(wp_logout_url($current_url)); ?>">Thoát</a> không ?
				</div>

			<?php } else { ?>

			<div class="login-box bg-register">
			    <?php $err = ''; $success = ''; global $wpdb, $PasswordHash, $current_user, $user_ID; if(isset($_POST['task']) && $_POST['task'] == 'register' ) { $pwd1 = $wpdb->escape(trim($_POST['pwd1']));
			        $pwd2 = $wpdb->escape(trim($_POST['pwd2']));
			        $email = $wpdb->escape(trim($_POST['email']));
			        $username = $wpdb->escape(trim($_POST['username']));
			 
			        if( $email == "" || $pwd1 == "" || $pwd2 == "" || $username == "") {
			            $err = 'Vui lòng không bỏ trống những thông tin bắt buộc!';
			        } else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			            $err = 'Địa chỉ Email không hợp lệ!.';
			        } else if(email_exists($email) ) {
			            $err = 'Bạn đã đăng ký thành công!.';
			        } else if($pwd1 <> $pwd2 ){
			            $err = '2 Password không giống nhau!.';
			        } else {
			            $user_id = wp_insert_user( array ('user_pass' => apply_filters('pre_user_user_pass', $pwd1), 'user_login' => apply_filters('pre_user_user_login', $username), 'user_email' => apply_filters('pre_user_user_email', $email), 'role' => 'subscriber' ) );
			            if( is_wp_error($user_id) ) {
			                $err = 'Lỗi khi tạo người dùng.';
			            } else {
			                do_action('user_register', $user_id);
			                $success = 'Bạn đã đăng ký thành công!';
			            }
			        }
			    }
			    ?>

				<!--display error/success message-->

				<div id="message">
			        <?php
			            if(! empty($err) ) :
			                echo ''.$err.'';
			            endif;
			        ?>
			        <?php
			            if(! empty($success) ) :
			                $login_page  = home_url( '/login/' );
			                echo ''.$success. '<a href='.$login_page.'> Đăng nhập</a>'.'';
			            endif;
			        ?>
				</div>

				<form class="form-horizontal" method="post" role="form">
					<div class="form-group">							    
					    <div class="bg-register2">
					    <input type="text" class="form-control" name="username" id="username" placeholder="Tên đăng nhập" required>
					    </div>
					</div>

					<div class="form-group">
					    <div class="bg-register2">
					        <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
					    </div>
					</div>

					<div class="form-group">
					    <div class="bg-register2">
					        <input type="password" class="form-control" name="pwd1" id="pwd1" placeholder="Nhập password" required>
					    </div>
					</div>

					<div class="form-group">
					    <div class="bg-register2">
					        <input type="password" class="form-control" name="pwd2" id="pwd2" placeholder="Nhập lại password" required>
					    </div>
					</div>

					<?php wp_nonce_field( 'post_nonce', 'post_nonce_field' ); ?>

					<div class="form-group">
					    <div class="bg-register2">
					    	<button type="submit" class="btn-register">Đăng ký</button>
					    	
					    	<input type="hidden" name="task" value="register" />
			    	
					    </div>
					</div>
				</form>
			</div>

			<div class="thongbaologin">
			    <?php
			        $login  = (isset($_GET['login']) ) ? $_GET['login'] : 0;
			        if ( $login === "failed" ) {
			                echo '<strong>Lỗi:</strong> Sai Username hoặc Password.!';
			        } elseif ( $login === "empty" ) {
			                echo '<strong>Lỗi:</strong> Username và Password không thể bỏ trống.';
			        } elseif ( $login === "false" ) {
			                echo '<strong>Lỗi:</strong> Bạn đã thoát ra.';
			        }
			    ?>
			</div>
			 
			<?php } ?>

		</div>
	</div>


<?php get_footer(); ?>