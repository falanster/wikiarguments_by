<?php
/********************************************************************************
 * The contents of this file are subject to the Common Public Attribution License
 * Version 1.0 (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://www.wikiarguments.net/license/. The License is based on the Mozilla
 * Public License Version 1.1 but Sections 14 and 15 have been added to cover
 * use of software over a computer network and provide for limited attribution
 * for the Original Developer. In addition, Exhibit A has been modified to be
 * consistent with Exhibit B.
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 *
 * The Original Code is Wikiarguments. The Original Developer is the Initial
 * Developer and is Wikiarguments GbR. All portions of the code written by
 * Wikiarguments GbR are Copyright (c) 2012. All Rights Reserved.
 * Contributor(s):
 *     Andreas Wierz (andreas.wierz@gmail.com).
 *
 * Attribution Information
 * Attribution Phrase (not exceeding 10 words): Powered by Wikiarguments
 * Attribution URL: http://www.wikiarguments.net
 *
 * This display should be, at a minimum, the Attribution Phrase displayed in the
 * footer of the page and linked to the Attribution URL. The link to the Attribution
 * URL must not contain any form of 'nofollow' attribute.
 *
 * Display of Attribution Information is required in Larger Works which are
 * defined in the CPAL as a work which combines Covered Code or portions
 * thereof with code not governed by the terms of the CPAL.
 *******************************************************************************/

global $sTemplate, $sUser, $sDB, $sPacket, $sPage;

$page       = "";
$language   = $sTemplate->getLangBase();
?>
<?php include($sTemplate->getTemplateRootAbs()."header.php"); ?>

<div id = "content_wide">
  <div class = "thin">

		<div class = "headline"><?php echo $sTemplate->getString("HTML_META_TITLE_USAGE_MANUAL"); ?></div>

		<?php //echo $sTemplate->getString("USAGE_MANUAL"); ?>
		
		
		<h2>Агульны інтэрфэйс платформы</h2>

<p>Прывітанне ўсім, хто апынуўся на платформе Інструмент Удзелу! <br />
Спадзяемся, вы плённа праведзяце час тут. У гэты апісанні вы даведаецеся, як карыстацца платформай 
<a href = '<?php echo $sTemplate->getRoot(); ?>'>Інструмент Удзелу</a>, і потым будзеце пачуваць сябе тут нашмат камфортней.</p>

<ol>
<li>Пачнем з рэгістрацыі: робіцца гэта вельмі проста. 
Заходзім <a href = '<?php echo $sTemplate->getRoot(); ?>signup//'>на адмысловую старонку</a>, прыдумляем лагін і пароль, уводзім іх у адпаведныя радкі.</li>
<li>Далей вам на пошту прыходзіць паведамленне, у якім неабходна пацвердзіць рэгістрацыю.</li>
</ol>
<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/help/registration.png" alt="" width="650">

<p>Пацвердзілі? Цудоўна! Цяпер вы можаце пачынаць сваё абмеркаванне! Але найперш ўсё-ткі зайдзіце на старонкі 
<a href = '<?php echo $sTemplate->getRoot(); ?>discussion/'>“Што абмяркоўваем”</a> і 
<a href = '<?php echo $sTemplate->getRoot(); ?>license/'>“Правілы і ліцэнзія”</a> і ўважліва іх прачытайце.</p>

<h2>Як дадаць пытанне?</h2>

<p>Тут мы навучымся дадаваць свае пытанні для абмеркавання на платформе “Інструмент Удзелу”.</p>

<ol>
<li>Для гэтага ціснем на адмысловую кнопку і апынаемся 
<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/'>на патрэбнай старонцы</a>.</li>
<li>Запаўняем назву. Стараемся, каб фармулёўка была не даўжэйшай за 100 сімвалаў. Дэталі можна пакінуць для графы “Падрабязнасці”: гэта можа быць ваша версія новага азначэння або яго ўдакладненне. Памер не абмежаваны, але будзьце лаканічнымі, бо вельмі доўгія кавалкі тэктсу складана чытаць. Лепш разбіць сваю прапанову на некалькі.</li>
<li>Ціснем “Даслаць” – і вуаля – наша пытанне дададзена.</li>
</ol>
<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/help/add-new-question.png" alt="" width="650">

<h2>Як дадаць аргумент?</h2>

<p>Сваю ж прапанову вы можаце альбо падтрымаць, альбо не падтрымаць.</p>

<ol>
<li>Калі ёсць думкі ў падтрымку, можаце дадаць аргумент. Але майце на ўвазе: загаловак мусіць быць таксама лаканічным – не даўжэй за 25 сімвалаў. Апісанне – не болей за 140. </li>
<li>Іншыя думкі можаце пакінуць у полі “Падрабязнасці аргумента”.</li>
<li>Ціснем “Захаваць” і бачым, што аргумент дадаецца ў левай калонцы.</li>
</ol>

<p>Калі ж вы не падтрымліваеце парпанову, то можаце дадаць контраргумент. Гэта робіцца такім жа чынам, як і дадаванне аргументу.</p>

<p><strong>Увага</strong>: рэдагаваць пытанне можна толькі на працягу 10 хвілін з моманту яго стварэння.</p>
<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/help/navigation-three.png" alt="" width="900">

<h2>Галасаванне і прасоўванне пытанняў і аргументаў</h2>

<p>Працягваем вучыцца карыстацца платформай Інструмент Удзелу і зараз пагутарым пра галасаванне і прасоўванне.</p>

<ol>
<li>Для таго, каб іншым было бачна, наколькі пытанне выклікае ці не выклікае падтрымку дыскусантаў, у Інструменце Ўдзелу вы можаце галасаваць за або супраць прапановы.</li>
<li>Пэўныя пытанні могуць быць значнымі для вас, а пэўныя, наадварот, адцягваць ўвагу ад асноўных. Таму актыўнае выкарыстанне функцыі “Значна” дазволіць супольнасці бачыць тэндэнцыі абмеркавання законапраекта.</li>
<li>Акрамя значнасці або нязначнасці пытанняў, можна ўздзейнічаць на самі аргументы. Калі вы лічыце той ці іншы аргумент значным, адзначайце стрэлкай уверх, інакш - стрэлкай уніз.</li>
</ol>
<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/help/navigation-two.png" alt="" width="900">

<p><strong>Дарэчы</strong>: у верхнім меню злева магчыма сартыраваць запісы альбо па значнасці, альбо па часе дадавання.</p>

<h2>Робім пошук і цэтлікі</h2>

<p>Працягваем вучыцца карыстацца платформай Інструмент Удзелу.</p>
<p>Калі вы дайшлі да гэтага відэа, то ў вас ужо магло ўзнікнуць заканамернае пытанне: што такое цэтлікі і навошта яны патрэбны? Расказваем.</p>

<ol>
<li>Цэтлікі – гэта словы, якія сцісла апісваюць і характарызуюць пытанні. Гэта можа быць адно слова, а можа быць некалькі. Калі пытанняў становіцца вельмі шмат, цэтлікі дапамагаюць у пошуку той ці іншай тэмы. Таксама яны дапамогуць пры апрацоўцы створаных пытанняў. Таму карыстайцеся імі і так спрабуйце класіфікаваць свае каментары і пытанні.</li>
<li>Як дадаваць цэтлікі. Гэтак жа, як і самі пытанні. Дарэчы, іх можна або выправіць, або дадаць пры рэдагаванні пытання.</li>
<li>Усё гэта патрэбна для таго, каб потым было зручней карыстацца платформай і прасцей шукаць патрэбныя пытанні або каментары.</li>
</ol>
<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/help/search-with-tag.png" alt="" width="900">

<p>Вось і ўсё. <strong>Будзьце</strong> актыўнымі!</p>

<p>Калі ў вас засталіся пытанні, заўвагі або прапановы – смела пішыце нам на паштовую скрыню 
<a href = 'mail:falanster.by@gmail.com'>falanster.by@gmail.com</a>
. Абяцаем адгукнуцца і ўсё вырашыць як мага хутчэй. Удзельнічайце!</p>

		
		
		

		<div>
			<h3>Меню:</h3>
			<ul>
				<li><a href = '<?php echo $sTemplate->getRoot(); ?>about/'>Пра нас</a></li>
				<li><a href = '<?php echo $sTemplate->getRoot(); ?>discussion/'>Што абмяркоўваем</a></li>
				<li><a href = 'http://falanster.by/be/help' target = '_blank'>Дапамагчы праекту<a></li>
				<li><a href = '<?php echo $sTemplate->getRoot(); ?>license/'>Правілы і ліцэнзія<a></li>
			</ul>
		</div>
		</br>
		</br>
		
			<div id = "big_orange_button">
				<?php if(!$sUser->isLoggedIn()) { ?>
			<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/' onclick = "wikiargument.raiseError('<?php echo $sTemplate->getString("ERROR_NOT_LOGGED_IN") ?>'); return false;">
				<button class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></button>
			</a>
			<?php }else if($sPage->group() && $sPage->group()->getPermission($sUser, ACTION_NEW_QUESTION) == PERMISSION_DISALLOWED) { ?>
			<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/' onclick = "wikiargument.raiseError('<?php echo $sTemplate->getString("NOTICE_NEW_QUESTION_NO_PERMISSION") ?>'); return false;">
				<button class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></button>
			</a>
			<?php }else if($sPage->group()) { ?>
			<a href = '<?php echo $sTemplate->getRoot(); ?>groups/<?php echo $sPage->group()->url(); ?>/new-question/'>
				<div class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></div>
			</a>
			<?php }else { ?>
			<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/'>
				<div class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></div>
			</a>
			<?php } ?>
			</div>
		
	</div>
</div>

<?php include($sTemplate->getTemplateRootAbs()."footer.php"); ?>
