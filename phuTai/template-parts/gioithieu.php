<?php /**template name: Giới thiệu */ get_header()?>

<div class="swiper heading-slider">
    <div class="swiper-wrapper">
        <?php if(have_rows("heading-slider")): while(have_rows("heading-slider")): the_row(); ?>
        <div class="swiper-slide">
            <div class="heading-slide">
                <div class="img-bg">
                    <img src="<?php echo get_sub_field("img") ?>" alt="" class="w-100 img-fluid">
                    <div class="overlay"></div>

                </div>
            </div>
        </div>
        <?php endwhile;endif ?>
    </div>
    <div class="swiper-pagination"></div>
</div>

<div class="gioi-thieu-wrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 overflow-hidden">
                <div class="gioi-thieu-title" data-aos="slide-right"><?php the_title() ?></div>
				
				<div class="gt-text text-intro" data-aos="slide-left">
                    <?php echo get_field("gioi-thieu-text") ?>
                </div>
            </div>
			
            <div class="col-lg-6 overflow-hidden">
				<div class="video-intro">
				
					<div class="embed-container">
						<?php echo get_field('video-intro') ?>
					</div>

				</div>
            </div>
        </div>
    </div>

</div>

<div class="linhvuc-jsc-wrap overflow-hidden">
    <div class="linhvuc-jsc container position-relative">
        <div class="row">
            <div class="col-md-6 ">
                <div class="left-des overflow-hidden">
                    <div class="jsc-title"  data-aos="slide-right"><?php echo get_field("linhvuc-title") ?></div>
                    <div class="jsc-desc"  data-aos="slide-right"><?php echo get_field("linhvuc-desc") ?></div>
                    <div class="jsc-desc"><?php echo get_field("jsc-name") ?></div>
                </div>

            </div>
            <div class="col-md-6 overflow-hidden">
                <div class="lv-wrap" data-aos="zoom-in">
                    <?php if(have_rows("linhvuc")): while(have_rows("linhvuc")): the_row(); ?>
                    <div class="linhvuc-name">
                        <span><?php echo get_sub_field("number") ?></span>
                        <span><a
                                href="<?php echo get_sub_field("link") ?>"><?php echo get_sub_field("name") ?></a></span>
                    </div>
                    <div class="linhvuc-img">
                        <a href="<?php echo get_sub_field("link") ?>"><img src="<?php echo get_sub_field("img") ?>"
                                alt="" class="w-100"></a>
                    </div>

                    <?php endwhile;endif ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="history-wrap">
    <div class="container overflow-hidden">
        <div class="history-title" data-aos="slide-right"><?php echo get_field("history-title") ?></div>
        <div class="history">
            <?php if(have_rows("history")): while(have_rows("history")): the_row(); ?>
            <div class="ewrap" data-aos="zoom-in">
                <div class="event">
                    <div class="year"><?php echo get_sub_field("year") ?></div>
                    <div class="event-text"><?php echo get_sub_field("event") ?></div>
                </div>
            </div>
            <?php endwhile;endif ?>

        </div>
    </div>
</div>

<div class="chi-nhanh-wrap">
    <div class="container overflow-hidden"> 
        <div class="chi-nhanh-title" data-aos="slide-right"><?php echo get_field("chi-nhanh-title") ?></div>
        <div class="row">
            <div class="col-md-5">
                <div class="chi-nhanh-map">
                    <img src="<?php echo get_field("chi-nhanh-map") ?>" alt="" class="">
                </div>
            </div>
            <div class="col-md-7 overflow-hidden">
				 <div class="chi-nhanh-tabs" data-aos="zoom-in">
				<?php if(have_rows("chi-nhanh")): while(have_rows("chi-nhanh")): the_row(); ?>
               
                    <div class="place_tab" id="<?php echo 'tab-'.sanitize_title(get_sub_field("dia-diem")) ?>"><?php echo get_sub_field("dia-diem") ?></div>
                <?php endwhile;endif ?>
					 <div class="line">
					
					 </div>
					 </div>
                <?php if(have_rows("chi-nhanh")): while(have_rows("chi-nhanh")): the_row(); ?>
               
                    <div class="row cpny tab-content" >
						<div class="swiper cateSwiper">
							<div class="swiper-wrapper">
								  <?php if(have_rows("ctys")): while(have_rows("ctys")): the_row(); ?>
								<div class="swiper-slide">
									<div class="cpny-item">
										<div class="cpny-name">
											<a
												href="<?php echo get_sub_field("link") ?>"><?php echo get_sub_field("name") ?></a>
										</div>
										<div class="cpny-info">
											<?php if(have_rows("desc")): while(have_rows("desc")): the_row(); ?>

											<p>
												<img src="<?php echo get_sub_field("icon") ?>" alt="">
												<span><?php echo get_sub_field("text") ?></span>
											</p>

											<?php endwhile;endif ?>
										</div>

									</div>

								</div>
								<?php endwhile;endif ?>
							</div>		
							<div class="swiper-button-next"></div>
    						<div class="swiper-button-prev"></div>
						</div>
                    </div>
               

                <?php endwhile;endif ?>

            </div>

        </div>
    </div>
</div>



<div class="mission-wrap position-relative">
    <div class="container missions-wrap overflow-hidden">


        <div class="mission-heading" data-aos="slide-right">
            <div class="mis-title"><?php echo get_field("mission-title") ?></div>
        </div>

        <div class="mission-imgs-mobile" >
                <?php 
                if(have_rows("mission-bgs")): 
                    while(have_rows("mission-bgs")): 
                        the_row(); ?>
                        <div class="su-im-mobile" data-aos="zoom-in">
                            <img src="<?php echo get_sub_field('img') ?>" alt="" class=" w-100">
                        </div>
                <?php 
                    endwhile;
                endif; 
                ?>
        </div>

        <?php if(have_rows("missions")): while(have_rows("missions")): the_row(); ?>

        <div class="mission" data-aos="zoom-in">
            
            <div class="mission-name-wrap">
                <div class="mis-icon-wrap">
                    <img src="<?php echo get_sub_field("icon") ?>" alt="">
                </div>
               <div class="mis-name-group">
                    <div class="mission-name"><?php echo get_sub_field("mission") ?></div>
                    <div class="mission-text">
                        <?php echo get_sub_field("text") ?>
                    </div>
               </div>
            </div>
        </div>
        <?php endwhile;endif ?>

    </div>
    <div class="mission-bgs">
       
      
            <div class="mission-bg">
                <img src="<?php echo get_field('mission-bgs')[0]['img'] ?>" alt="" class="w-100 h-100 object-fit-cover ">
            </div>
            <div class="sub-imgs">
                <?php 
                $first_row = true; 
                if(have_rows("mission-bgs")): 
                    while(have_rows("mission-bgs")): 
                        the_row(); 
                        if($first_row):
                            $first_row = false; 
                            continue; 
                        endif; 
                ?>
                        <div class="su-im">
                            <img src="<?php echo get_sub_field('img') ?>" alt="" class="sub-img w-100">
                        </div>
                <?php 
                    endwhile;
                endif; 
                ?>
            </div>
       

       
        
    </div>
</div>







<?php get_footer()?>