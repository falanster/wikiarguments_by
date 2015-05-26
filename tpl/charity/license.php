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

	<div class = "headline"><?php echo $sTemplate->getString("HTML_META_TITLE_LICENSE"); ?></div>
	<h3>Правілы</h3>
	<ol>
		<li>Выказвайцеся па <a href="/discussion/" target="_blank">тэме</a>,</li>
		<li>Паважайце іншых удзельнікаў,</li>
		<li>Будзьце лаканічнымі</li>
	</ol>
		
	<h3>Ліцэнзія</h3>
	<ul>
		<li>Усе каментары, заўвагі, прапановы, выкладзеныя ў Інструменце Удзелу, знаходзяцца ў грамадскім здабытку. Гэта значыць, ўсе абмеркаванні можна свабодна выкарыстоўваць са спасылкай на аўтара электроннага ўдзелу.</li>
		<li>Праграмны код сістэмы даступны пад адкрытай (opensource) публічнай ліцэнзіяй <a href="http://opensource.org/licenses/CPAL-1.0" target="_blank">CPAL-1.0.</a></li>
		<li>Арыгінальны <a href="https://code.google.com/p/wikiarguments/source/checkout" target="_blank">прататып</a> платформы электроннага ўдзелу.</li>
		<li>Рэпазіторый <a href="https://github.com/falanster/wikiarguments_by">працуючай версіі</a> інструменту электроннага ўдзелу</li>
	</ul>
	<br />
	<br />
	<br />
	<div id="big_orange_button">
          <a href="<?php echo $sTemplate->getRoot(); ?>new-question/">
	    <div class="big_button_orange first big_button_new_question">Дадаць пытанне</div>
	  </a>
	</div>

  </div>
</div>

<?php include($sTemplate->getTemplateRootAbs()."footer.php"); ?>
