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
    <form action = "<?php echo $sPage->getFormUrl(); ?>" method = "POST" id = "form_new_question">
      <div class = "new_question">
        <div class = "row">
          <div class = "headline"><?php echo $sTemplate->getString("NEW_QUESTION_HEADLINE"); ?></div>
        </div>
        <div class = "row">
          <div class = "label"><?php echo $sTemplate->getString("NEW_QUESTION_TITLE"); ?></div>
          <div class = "input">
            <textarea id = "new_question_title" name = "new_question_title" maxlength="<?php echo MAX_QUESTION_CHR_LENGTH ?>"></textarea>
            <span class="characters_left"><span id="new_question_title_chars_left"><?php echo MAX_QUESTION_CHR_LENGTH ?></span> <?php echo $sTemplate->getString("CHARS_WRITTEN_LEFT"); ?> </span>
          </div>
        </div>

        <div class = "row">
          <div class = "label"><?php echo $sTemplate->getString("NEW_QUESTION_DETAILS"); ?></div>
          <div class = "input">
            <textarea id = "new_question_details" name = "new_question_details"></textarea>
            <span class="characters_left"><span id="new_question_details_chars_left">0</span> <?php echo $sTemplate->getString("CHARS_WRITTEN"); ?> </span>
          </div>
        </div>

        <div class = "row">
          <div class = "label"><?php echo $sTemplate->getString("NEW_QUESTION_TAGS"); ?></div>
          <div class = "input">
            <textarea id = "new_question_tags" name = "new_question_tags" maxlength="<?php echo MAX_TAGS_CHR_LENGTH ?>"></textarea>
            <span class="characters_left"><?php echo $sTemplate->getString("TAGS_DIVIDE"); ?> <span id="new_question_tags_chars_left"><?echo MAX_TAGS_CHR_LENGTH ?></span> <?php echo $sTemplate->getString("CHARS_WRITTEN_LEFT"); ?></span>
          </div>
        </div>
	<input type="hidden" value="<?php echo QUESTION_TYPE_LISTED; ?>" name="new_question_type">
<!--
        <div class = "row">
          <div class = "label2"><?php echo $sTemplate->getString("NEW_QUESTION_TYPE"); ?></div>
          <div class = "input">
            <select name = "new_question_type" id = "new_question_type" onchange = "wikiargument.changeQuestionType();">
              <option value = "<?php echo QUESTION_TYPE_LISTED; ?>" selected><?php echo $sTemplate->getString("QUESTION_TYPE_LISTED"); ?></option>
              <option value = "<?php echo QUESTION_TYPE_UNLISTED; ?>"><?php echo $sTemplate->getString("QUESTION_TYPE_UNLISTED"); ?></option>
            </select>
          </div>
        </div>

        <div class = "row" id = "row_question_flags" style = "display: none;">
          <div class = "label2"><?php echo $sTemplate->getString("NEW_QUESTION_FLAGS"); ?></div>
          <div class = "input">
            <select name = "new_question_flags" id = "new_question_flags" onchange = "wikiargument.changeQuestionFlags();">
              <option value = "0" selected><?php echo $sTemplate->getString("PARTICIPATION_ONLY_REGISTERED"); ?></option>
              <option value = "<?php echo QUESTION_FLAG_PART_ALL; ?>"><?php echo $sTemplate->getString("PARTICIPATION_ALL"); ?></option>
            </select>
          </div>
        </div>

        <div class = "row" id = "row_question_unlisted_manipulation" style = "display: none;">
          <?php echo $sTemplate->getString("NOTICE_NEW_QUESTION_UNLISTED_MANIPULATION"); ?>
        </div>
-->
        <div class = "row row_submit">
<?php
/*
            <button class = "button_blue clear_form_button" onclick = "$('.new_question textarea').val(''); return false;"><?php echo "Clear form" ?></button>
*/
?>
            <span class = "button_orange" onclick = "$('#form_new_question').submit(); $(this).attr('disabled','disabled'); return false;"><?php echo $sTemplate->getString("SUBMIT_NEW_QUESTION"); ?></span>
        </div>
      </div>
      <input type = "hidden" name = "new_question" value = "1" />
    </form>

<?php
/*
    <div class="writing_tips">
        <h3>Tips on writing better questions</h3>
        <ul class="writing_tips_list">
            <li>Lorem ipsum dollar sit amet, consectetur adipiscing</li>
            <li>Pellentesque feugiat dapibus auctor. Curabitur</li>
            <li>Cras tempor metus quis urna tempor consequat. Cum sociis natoque</li>
            <li>Sed interdum orci sed quam aliquet dapibus. In nisl eros</li>
            <li>Praesent lacinia ligula sit amet erat pretium ullamcorper</li>
        </ul>
    </div>
*/
?>

  </div>
</div>

<?php include($sTemplate->getTemplateRootAbs()."footer.php"); ?>
