# SPDX-License-Identifier: GPL-2.0
#
# (c) 2010-2018 Joe Perches <joe@perches.com>
use Encode qw(decode encode);
# git output parsing needs US English output, so first set backtick child process LANGUAGE
my $git_command ='export LANGUAGE=en_US.UTF-8; git';
my $perl_version_ok = 1;
	$perl_version_ok = 0;
	exit(1) if (!$ignore_perl_version);
			__refconst|
			__refdata|
			__ro_after_init|
			__syscall
	TP_printk|
our $allocFunctions = qr{(?x:
	(?:(?:devm_)?
		(?:kv|k|v)[czm]alloc(?:_node|_array)? |
		kstrdup(?:_const)? |
		kmemdup(?:_nul)?) |
	(?:\w+)?alloc_skb(?:ip_align)? |
				# dev_alloc_skb/netdev_alloc_skb, et al
	dma_alloc_coherent
)};

	Co-developed-by:|
$mode_perms_search = "(?:${mode_perms_search})";

our %deprecated_apis = (
	"synchronize_rcu_bh"			=> "synchronize_rcu",
	"synchronize_rcu_bh_expedited"		=> "synchronize_rcu_expedited",
	"call_rcu_bh"				=> "call_rcu",
	"rcu_barrier_bh"			=> "rcu_barrier",
	"synchronize_sched"			=> "synchronize_rcu",
	"synchronize_sched_expedited"		=> "synchronize_rcu_expedited",
	"call_rcu_sched"			=> "call_rcu",
	"rcu_barrier_sched"			=> "rcu_barrier",
	"get_state_synchronize_sched"		=> "get_state_synchronize_rcu",
	"cond_synchronize_sched"		=> "cond_synchronize_rcu",
);

#Create a search pattern for all these strings to speed up a loop below
our $deprecated_apis_search = "";
foreach my $entry (keys %deprecated_apis) {
	$deprecated_apis_search .= '|' if ($deprecated_apis_search ne "");
	$deprecated_apis_search .= $entry;
}
$deprecated_apis_search = "(?:${deprecated_apis_search})";
our $single_mode_perms_string_search = "(?:${mode_perms_string_search})";
our $multi_mode_perms_string_search = qr{
	${single_mode_perms_string_search}
	(?:\s*\|\s*${single_mode_perms_string_search})*
}x;

sub perms_to_octal {
	my ($string) = @_;

	return trim($string) if ($string =~ /^\s*0[0-7]{3,3}\s*$/);

	my $val = "";
	my $oval = "";
	my $to = 0;
	my $curpos = 0;
	my $lastpos = 0;
	while ($string =~ /\b(($single_mode_perms_string_search)\b(?:\s*\|\s*)?\s*)/g) {
		$curpos = pos($string);
		my $match = $2;
		my $omatch = $1;
		last if ($lastpos > 0 && ($curpos - length($omatch) != $lastpos));
		$lastpos = $curpos;
		$to |= $mode_permission_string_types{$match};
		$val .= '\s*\|\s*' if ($val ne "");
		$val .= $match;
		$oval .= $omatch;
	}
	$oval =~ s/^\s*\|\s*//;
	$oval =~ s/\s*\|\s*$//;
	return sprintf("%04o", $to);
}
	(?:$Storage\s+)?${Type}\s+uninitialized_var\s*\(|
	(?:SKCIPHER_REQUEST|SHASH_DESC|AHASH_REQUEST)_ON_STACK\s*\(
our %maintained_status = ();

	if (!exists($maintained_status{$filename})) {
		$maintained_status{$filename} = `perl $root/scripts/get_maintainer.pl --status --nom --nol --nogit --nogit-fallback -f $filename 2>&1`;
	}
	return $maintained_status{$filename} =~ /obsolete/i;
}

sub is_SPDX_License_valid {
	my ($license) = @_;

	return 1 if (!$tree || which("python") eq "" || !(-e "$root/scripts/spdxcheck.py") || !(-e "$root/.git"));

	my $root_path = abs_path($root);
	my $status = `cd "$root_path"; echo "$license" | python scripts/spdxcheck.py -`;
	return 0 if ($status ne "");
	return 1;
		my $git_last_include_commit = `${git_command} log --no-merges --pretty=format:"%h%n" -1 -- include`;
		$files = `${git_command} ls-files "include/*.h"`;
	my $output = `${git_command} log --no-color --format='%H %s' -1 $commit 2>&1`;
	if ($lines[0] =~ /^error: short SHA1 $commit is ambiguous/) {
		my $lines = `${git_command} log --no-color --no-merges --pretty=format:'%H %s' $git_range`;
$allow_c99_comments = !defined $ignore_type{"C99_COMMENT_TOLERANCE"};
	if (!$perl_version_ok) {
      An upgrade to at least perl $minimum_perl_version is suggested.
		$formatted_email =~ s/\Q$address\E.*$//;
		# Comments we are whacking completely including the begin
	return "" if (!defined($line) || !defined($rawline));
sub get_stat_real {
	my ($linenr, $lc) = @_;

	my $stat_real = raw_line($linenr, 0);
	for (my $count = $linenr + 1; $count <= $lc; $count++) {
		$stat_real = $stat_real . "\n" . raw_line($count, 0);
	}

	return $stat_real;
}

sub get_stat_here {
	my ($linenr, $cnt, $here) = @_;

	my $herectx = $here . "\n";
	for (my $n = 0; $n < $cnt; $n++) {
		$herectx .= raw_line($linenr, $n) . "\n";
	}

	return $herectx;
}

	my $author = '';
	my $authorsignoff = 0;
	my $is_binding_patch = -1;
	my $commit_log_lines = 0;	#Number of commit log lines
	my $checklicenseline = 1;

# check if it's a mode change, rename or start of a patch
		if (!$in_commit_log &&
		    ($line =~ /^ mode change [0-7]+ => [0-7]+ \S+\s*$/ ||
		    ($line =~ /^rename (?:from|to) \S+\s*$/ ||
		     $line =~ /^diff --git a\/[\w\/\.\_\-]+ b\/\S+\s*$/))) {
			$is_patch = 1;
		}

			$checklicenseline = 1;

			if ($realfile !~ /^MAINTAINERS/) {
				my $last_binding_patch = $is_binding_patch;

				$is_binding_patch = () = $realfile =~ m@^(?:Documentation/devicetree/|include/dt-bindings/)@;

				if (($last_binding_patch != -1) &&
				    ($last_binding_patch ^ $is_binding_patch)) {
					WARN("DT_SPLIT_BINDING_PATCH",
					     "DT binding docs and includes should be a separate patch. See: Documentation/devicetree/bindings/submitting-patches.txt\n");
				}
			}

# Verify the existence of a commit log if appropriate
# 2 is used because a $signature is counted in $commit_log_lines
		if ($in_commit_log) {
			if ($line !~ /^\s*$/) {
				$commit_log_lines++;	#could be a $signature
			}
		} elsif ($has_commit_log && $commit_log_lines < 2) {
			WARN("COMMIT_MESSAGE",
			     "Missing commit description - Add an appropriate one\n");
			$commit_log_lines = 2;	#warn only once
		}

# Check the patch for a From:
		if (decode("MIME-Header", $line) =~ /^From:\s*(.*)/) {
			$author = $1;
			$author = encode("utf8", $author) if ($line =~ /=\?utf-8\?/i);
			$author =~ s/"//g;
		}

			if ($author ne '') {
				my $l = $line;
				$l =~ s/"//g;
				if ($l =~ /^\s*signed-off-by:\s*\Q$author\E/i) {
				    $authorsignoff = 1;
				}
			}

# Check Co-developed-by: immediately followed by Signed-off-by: with same name and email
			if ($sign_off =~ /^co-developed-by:$/i) {
				if ($email eq $author) {
					WARN("BAD_SIGN_OFF",
					      "Co-developed-by: should not be used to attribute nominal patch author '$author'\n" . "$here\n" . $rawline);
				}
				if (!defined $lines[$linenr]) {
					WARN("BAD_SIGN_OFF",
                                             "Co-developed-by: must be immediately followed by Signed-off-by:\n" . "$here\n" . $rawline);
				} elsif ($rawlines[$linenr] !~ /^\s*signed-off-by:\s*(.*)/i) {
					WARN("BAD_SIGN_OFF",
					     "Co-developed-by: must be immediately followed by Signed-off-by:\n" . "$here\n" . $rawline . "\n" .$rawlines[$linenr]);
				} elsif ($1 ne $email) {
					WARN("BAD_SIGN_OFF",
					     "Co-developed-by and Signed-off-by: name/email do not match \n" . "$here\n" . $rawline . "\n" .$rawlines[$linenr]);
				}
			}
		     $line =~ /^\s*\[\<[0-9a-fA-F]{8,}\>\]/) ||
		     $line =~ /^(?:\s+\w+:\s+[0-9a-fA-F]+){3,3}/ ||
		     $line =~ /^\s*\#\d+\s*\[[0-9a-fA-F]+\]\s*\w+ at [0-9a-fA-F]+/) {
					# stack dump address styles
# Check for adding new DT bindings not in schema format
		if (!$in_commit_log &&
		    ($line =~ /^new file mode\s*\d+\s*$/) &&
		    ($realfile =~ m@^Documentation/devicetree/bindings/.*\.txt$@)) {
			WARN("DT_SCHEMA_BINDING_PATCH",
			     "DT bindings should be in DT schema format. See: Documentation/devicetree/writing-schema.rst\n");
		}

# check for invalid commit id
		if ($in_commit_log && $line =~ /(^fixes:|\bcommit)\s+([0-9a-f]{6,40})\b/i) {
			my $id;
			my $description;
			($id, $description) = git_commit_info($2, undef, undef);
			if (!defined($id)) {
				WARN("UNKNOWN_COMMIT_ID",
				     "Unknown commit id '$2', maybe rebased or not pulled?\n" . $herecurr);
			}
		}

		    # 'choice' is usually the last thing on the line (though
		    # Kconfig supports named choices), so use a word boundary
		    # (\b) rather than a whitespace character (\s)
		    $line =~ /^\+\s*(?:config|menuconfig|choice)\b/) {
				if ($lines[$ln - 1] =~ /^\+\s*(?:bool|tristate|prompt)\s*["']/) {
				} elsif ($lines[$ln - 1] =~ /^\+\s*(?:help|---help---)\s*$/) {
					if ($lines[$ln - 1] =~ "---help---") {
						WARN("CONFIG_DESCRIPTION",
						     "prefer 'help' over '---help---' for new help texts\n" . $herecurr);
					}

				# This only checks context lines in the patch
				# and so hopefully shouldn't trigger false
				# positives, even though some of these are
				# common words in help texts
				if ($f =~ /^\s*(?:config|menuconfig|choice|endchoice|
						  if|endif|menu|endmenu|source)\b/x) {
# check for using SPDX license tag at beginning of files
		if ($realline == $checklicenseline) {
			if ($rawline =~ /^[ \+]\s*\#\!\s*\//) {
				$checklicenseline = 2;
			} elsif ($rawline =~ /^\+/) {
				my $comment = "";
				if ($realfile =~ /\.(h|s|S)$/) {
					$comment = '/*';
				} elsif ($realfile =~ /\.(c|dts|dtsi)$/) {
					$comment = '//';
				} elsif (($checklicenseline == 2) || $realfile =~ /\.(sh|pl|py|awk|tc)$/) {
					$comment = '#';
				} elsif ($realfile =~ /\.rst$/) {
					$comment = '..';
				}

# check SPDX comment style for .[chsS] files
				if ($realfile =~ /\.[chsS]$/ &&
				    $rawline =~ /SPDX-License-Identifier:/ &&
				    $rawline !~ m@^\+\s*\Q$comment\E\s*@) {
					WARN("SPDX_LICENSE_TAG",
					     "Improper SPDX comment style for '$realfile', please use '$comment' instead\n" . $herecurr);
				}

				if ($comment !~ /^$/ &&
				    $rawline !~ m@^\+\Q$comment\E SPDX-License-Identifier: @) {
					WARN("SPDX_LICENSE_TAG",
					     "Missing or malformed SPDX-License-Identifier tag in line $checklicenseline\n" . $herecurr);
				} elsif ($rawline =~ /(SPDX-License-Identifier: .*)/) {
					my $spdx_license = $1;
					if (!is_SPDX_License_valid($spdx_license)) {
						WARN("SPDX_LICENSE_TAG",
						     "'$spdx_license' is not supported in LICENSES/...\n" . $herecurr);
					}
				}
			}
		}

# check for using SPDX-License-Identifier on the wrong line number
		if ($realline != $checklicenseline &&
		    $rawline =~ /\bSPDX-License-Identifier:/ &&
		    substr($line, @-, @+ - @-) eq "$;" x (@+ - @-)) {
			WARN("SPDX_LICENSE_TAG",
			     "Misplaced SPDX-License-Identifier tag - use line $checklicenseline instead\n" . $herecurr);
		}

#	lines with an RFC3986 like URL
			# More special cases
			} elsif ($line =~ /^\+.*\bEFI_GUID\s*\(/ ||
				 $line =~ /^\+\s*(?:\w+)?\s*DEFINE_PER_CPU/) {
				$msg_type = "";

			# URL ($rawline is used in case the URL is in a comment)
			} elsif ($rawline =~ /^\+.*\b[a-z][\w\.\+\-]*:\/\/\S+/i) {
# check for assignments on the start of a line
		if ($sline =~ /^\+\s+($Assignment)[^=]/) {
			CHK("ASSIGNMENT_CONTINUATIONS",
			    "Assignment operator '$1' should be on the previous line\n" . $hereprev);
		}

		if ($perl_version_ok &&
		    $sline =~ /^\+\t+( +)(?:$c90_Keywords\b|\{\s*$|\}\s*(?:else\b|while\b|\s*$)|$Declare\s*$Ident\s*[;=])/) {
		if ($perl_version_ok &&
		      $line =~ /^\+\s*builtin_[\w_]*driver/ ||
		      $sline =~ /^\+\s+(?:static\s+)?(?:const\s+)?(?:union|struct|enum|typedef)\b/ ||
# check for unusual line ending [ or (
		if ($line =~ /^\+.*([\[\(])\s*$/) {
			CHK("OPEN_ENDED_LINE",
			    "Lines should not end with a '$1'\n" . $herecurr);
		}

		if ($line =~ /(.*)\b((?:if|while|for|switch|(?:[A-Z_]+|)FOR_EACH[A-Z_]+)\s*\(|do\b|else\b)/ && $line !~ /^.\s*\#/) {
		if ($line =~ /\b(?:(?:if|while|for|(?:[A-Z_]+|)FOR_EACH[A-Z_]+)\s*\(|(?:do|else)\b)/ && $line !~ /^.\s*#/ && $line !~ /\}\s*while\s*/) {
# check for unnecessary <signed> int declarations of short/long/long long
		while ($sline =~ m{\b($TypeMisordered(\s*\*)*|$C90_int_types)\b}g) {
			my $type = trim($1);
			next if ($type !~ /\bint\b/);
			next if ($type !~ /\b(?:short|long\s+long|long)\b/);
			my $new_type = $type;
			$new_type =~ s/\b\s*int\s*\b/ /;
			$new_type =~ s/\b\s*(?:un)?signed\b\s*/ /;
			$new_type =~ s/^const\s+//;
			$new_type = "unsigned $new_type" if ($type =~ /\bunsigned\b/);
			$new_type = "const $new_type" if ($type =~ /^const\b/);
			$new_type =~ s/\s+/ /g;
			$new_type = trim($new_type);
			if (WARN("UNNECESSARY_INT",
				 "Prefer '$new_type' over '$type' as the int is unnecessary\n" . $herecurr) &&
			    $fix) {
				$fixed[$fixlinenr] =~ s/\b\Q$type\E\b/$new_type/;
			}
		}

		}

# check for initialized const char arrays that should be static const
		if ($line =~ /^\+\s*const\s+(char|unsigned\s+char|_*u8|(?:[us]_)?int8_t)\s+\w+\s*\[\s*(?:\w+\s*)?\]\s*=\s*"/) {
			if (WARN("STATIC_CONST_CHAR_ARRAY",
				 "const array should probably be static const\n" . $herecurr) &&
			    $fix) {
				$fixed[$fixlinenr] =~ s/(^.\s*)const\b/${1}static const/;
			}
		}
		}
# printk should use KERN_* levels
		if ($line =~ /\bprintk\s*\(\s*(?!KERN_[A-Z]+\b)/) {
			WARN("PRINTK_WITHOUT_KERN_LEVEL",
			     "printk() should include KERN_<LEVEL> facility level\n" . $herecurr);
		if ($perl_version_ok &&
		    $sline =~ /$Type\s*$Ident\s*$balanced_parens\s*\{/ &&
		    $sline !~ /\#\s*define\b.*do\s*\{/ &&
		    $sline !~ /}/) {
				  "open brace '{' following function definitions go on the next line\n" . $herecurr) &&
			    $prefix !~ /[{,:]\s+$/ &&
		    $line =~ /\b(?:else|do)\{/) {
				$fixed[$fixlinenr] =~ s/^(\+.*(?:do|else|\)))\{/$1 {/;
		if ($line =~ /}(?!(?:,|;|\)|\}))\S/) {
# when !drivers/staging or command-line uses --strict
		if (($realfile !~ m@^(?:drivers/staging/)@ || $check_orig) &&
		    $perl_version_ok && defined($stat) &&
			if ($perl_version_ok &&
		if ($perl_version_ok &&
		if ($perl_version_ok &&
#Ignore SI style variants like nS, mV and dB
#(ie: max_uV, regulator_min_uA_show, RANGE_mA_VALUE)
			    $var !~ /^(?:[a-z0-9_]*|[A-Z0-9_]*)?_?[a-z][A-Z](?:_[a-z0-9_]+|_[A-Z0-9_]+)?$/ &&
				$define_args =~ s/\\\+?//g;
			my $herectx = get_stat_here($linenr, $stmt_cnt, $here);
				$tmp_stmt =~ s/\b(sizeof|typeof|__typeof__|__builtin\w+|typecheck\s*\(\s*$Type\s*,|\#+)\s*\(*\s*$arg\s*\)*\b//g;
				my $use_cnt = () = $tmp_stmt =~ /\b$arg\b/g;
				my $herectx = get_stat_here($linenr, $cnt, $here);
		if ($perl_version_ok &&
				my $herectx = get_stat_here($linenr, $cnt, $here);
				my $herectx = get_stat_here($linenr, $cnt, $here);
				my $herectx = get_stat_here($linenr, $cnt, $here);
		if ($line =~ /$String[A-Za-z0-9_]/ || $line =~ /[A-Za-z0-9_]$String/) {
			if (CHK("CONCATENATED_STRING",
				"Concatenated strings should use spaces between elements\n" . $herecurr) &&
			    $fix) {
				while ($line =~ /($String)/g) {
					my $extracted_string = substr($rawline, $-[0], $+[0] - $-[0]);
					$fixed[$fixlinenr] =~ s/\Q$extracted_string\E([A-Za-z0-9_])/$extracted_string $1/;
					$fixed[$fixlinenr] =~ s/([A-Za-z0-9_])\Q$extracted_string\E/$1 $extracted_string/;
				}
			}
			if (WARN("STRING_FRAGMENTS",
				 "Consecutive strings are generally better as a single string\n" . $herecurr) &&
			    $fix) {
				while ($line =~ /($String)(?=\s*")/g) {
					my $extracted_string = substr($rawline, $-[0], $+[0] - $-[0]);
					$fixed[$fixlinenr] =~ s/\Q$extracted_string\E\s*"/substr($extracted_string, 0, -1)/e;
				}
			}
		if ($rawline =~ /\\$/ && $sline =~ tr/"/"/ % 2) {
			WARN("IF_0",
			     "Consider removing the code enclosed by this #if 0 and its #endif\n" . $herecurr);
		}

# warn about #if 1
		if ($line =~ /^.\s*\#\s*if\s+1\b/) {
			WARN("IF_1",
			     "Consider removing the #if 1 and its #endif\n" . $herecurr);
			if ($s =~ /(?:^|\n)[ \+]\s*(?:$Type\s*)?\Q$testval\E\s*=\s*(?:\([^\)]*\)\s*)?\s*$allocFunctions\s*\(/ &&
			    $s !~ /\b__GFP_NOWARN\b/ ) {
		if ($perl_version_ok &&
		if ($perl_version_ok) {
				    "usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst\n" . $herecurr);
				     "msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst\n" . $herecurr);
# check for smp_read_barrier_depends and read_barrier_depends
		if (!$file && $line =~ /\b(smp_|)read_barrier_depends\s*\(/) {
			WARN("READ_BARRIER_DEPENDS",
			     "$1read_barrier_depends should only be used in READ_ONCE or DEC Alpha code\n" . $herecurr);
		}

# Check for __attribute__ section, prefer __section
		if ($realfile !~ m@\binclude/uapi/@ &&
		    $line =~ /\b__attribute__\s*\(\s*\(.*_*section_*\s*\(\s*("[^"]*")/) {
			my $old = substr($rawline, $-[1], $+[1] - $-[1]);
			my $new = substr($old, 1, -1);
			if (WARN("PREFER_SECTION",
				 "__section($new) is preferred over __attribute__((section($old)))\n" . $herecurr) &&
			    $fix) {
				$fixed[$fixlinenr] =~ s/\b__attribute__\s*\(\s*\(\s*_*section_*\s*\(\s*\Q$old\E\s*\)\s*\)\s*\)/__section($new)/;
			}
		}

		if ($perl_version_ok &&
# check for vsprintf extension %p<foo> misuses
		if ($perl_version_ok &&
			my $stat_real;

				my $specifier;
				my $extension;
				my $qualifier;
				my $bad_specifier = "";

				while ($fmt =~ /(\%[\*\d\.]*p(\w)(\w*))/g) {
					$specifier = $1;
					$extension = $2;
					$qualifier = $3;
					if ($extension !~ /[SsBKRraEehMmIiUDdgVCbGNOxtf]/ ||
					    ($extension eq "f" &&
					     defined $qualifier && $qualifier !~ /^w/)) {
						$bad_specifier = $specifier;
						last;
					}
					if ($extension eq "x" && !defined($stat_real)) {
						if (!defined($stat_real)) {
							$stat_real = get_stat_real($linenr, $lc);
						}
						WARN("VSPRINTF_SPECIFIER_PX",
						     "Using vsprintf specifier '\%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '\%p'.\n" . "$here\n$stat_real\n");
					}
				if ($bad_specifier ne "") {
					my $stat_real = get_stat_real($linenr, $lc);
					my $ext_type = "Invalid";
					my $use = "";
					if ($bad_specifier =~ /p[Ff]/) {
						$use = " - use %pS instead";
						$use =~ s/pS/ps/ if ($bad_specifier =~ /pf/);
					}

					WARN("VSPRINTF_POINTER_EXTENSION",
					     "$ext_type vsprintf pointer extension '$bad_specifier'$use\n" . "$here\n$stat_real\n");
		if ($perl_version_ok &&
#		if ($perl_version_ok &&
#		if ($perl_version_ok &&
#		if ($perl_version_ok &&
		if ($perl_version_ok &&
		if ($perl_version_ok &&
				     "usleep_range should not use min == max args; see Documentation/timers/timers-howto.rst\n" . "$here\n$stat\n");
				     "usleep_range args reversed, use min then max; see Documentation/timers/timers-howto.rst\n" . "$here\n$stat\n");
		if ($perl_version_ok &&
			my $stat_real = get_stat_real($linenr, $lc);
		if ($perl_version_ok &&
			my $stat_real = get_stat_real($linenr, $lc);
		    $stat =~ /^.\s*(?:extern\s+)?$Type\s*(?:$Ident|\(\s*\*\s*$Ident\s*\))\s*\(\s*([^{]+)\s*\)\s*;/s &&
		if ($perl_version_ok &&
# check for pointless casting of alloc functions
		if ($line =~ /\*\s*\)\s*$allocFunctions\b/) {
		if ($perl_version_ok &&
		    $line =~ /\b($Lval)\s*\=\s*(?:$balanced_parens)?\s*((?:kv|k|v)[mz]alloc(?:_node)?)\s*\(\s*(sizeof\s*\(\s*struct\s+$Lval\s*\))/) {
		if ($perl_version_ok &&
				my $herectx = get_stat_here($linenr, $cnt, $here);

		if ($perl_version_ok &&
		    $line =~ /\b($Lval)\s*\=\s*(?:$balanced_parens)?\s*krealloc\s*\(\s*($Lval)\s*,/ &&
		    $1 eq $3) {
				$has_break = 1 if ($fline =~ /\bswitch\b|\b(?:break\s*;[\s$;]*$|exit\s*\(\b|return\b|goto\b|continue\b)/);
		if ($perl_version_ok &&
			my $herectx = get_stat_here($linenr, $cnt, $here);

# check for spin_is_locked(), suggest lockdep instead
		if ($line =~ /\bspin_is_locked\(/) {
			WARN("USE_LOCKDEP",
			     "Where possible, use lockdep_assert_held instead of assertions based on spin_is_locked\n" . $herecurr);
		}

# check for deprecated apis
		if ($line =~ /\b($deprecated_apis_search)\b\s*\(/) {
			my $deprecated_api = $1;
			my $new_api = $deprecated_apis{$deprecated_api};
			WARN("DEPRECATED_API",
			     "Deprecated use of '$deprecated_api', prefer '$new_api' instead\n" . $herecurr);
		}

		if ($perl_version_ok &&
# nested likely/unlikely calls
		if ($line =~ /\b(?:(?:un)?likely)\s*\(\s*!?\s*(IS_ERR(?:_OR_NULL|_VALUE)?|WARN)/) {
			WARN("LIKELY_MISUSE",
			     "nested (un)?likely() calls, $1 already uses unlikely() internally\n" . $herecurr);
		}

# check for DEVICE_ATTR uses that could be DEVICE_ATTR_<FOO>
# and whether or not function naming is typical and if
# DEVICE_ATTR permissions uses are unusual too
		if ($perl_version_ok &&
		    defined $stat &&
		    $stat =~ /\bDEVICE_ATTR\s*\(\s*(\w+)\s*,\s*\(?\s*(\s*(?:${multi_mode_perms_string_search}|0[0-7]{3,3})\s*)\s*\)?\s*,\s*(\w+)\s*,\s*(\w+)\s*\)/) {
			my $var = $1;
			my $perms = $2;
			my $show = $3;
			my $store = $4;
			my $octal_perms = perms_to_octal($perms);
			if ($show =~ /^${var}_show$/ &&
			    $store =~ /^${var}_store$/ &&
			    $octal_perms eq "0644") {
				if (WARN("DEVICE_ATTR_RW",
					 "Use DEVICE_ATTR_RW\n" . $herecurr) &&
				    $fix) {
					$fixed[$fixlinenr] =~ s/\bDEVICE_ATTR\s*\(\s*$var\s*,\s*\Q$perms\E\s*,\s*$show\s*,\s*$store\s*\)/DEVICE_ATTR_RW(${var})/;
				}
			} elsif ($show =~ /^${var}_show$/ &&
				 $store =~ /^NULL$/ &&
				 $octal_perms eq "0444") {
				if (WARN("DEVICE_ATTR_RO",
					 "Use DEVICE_ATTR_RO\n" . $herecurr) &&
				    $fix) {
					$fixed[$fixlinenr] =~ s/\bDEVICE_ATTR\s*\(\s*$var\s*,\s*\Q$perms\E\s*,\s*$show\s*,\s*NULL\s*\)/DEVICE_ATTR_RO(${var})/;
				}
			} elsif ($show =~ /^NULL$/ &&
				 $store =~ /^${var}_store$/ &&
				 $octal_perms eq "0200") {
				if (WARN("DEVICE_ATTR_WO",
					 "Use DEVICE_ATTR_WO\n" . $herecurr) &&
				    $fix) {
					$fixed[$fixlinenr] =~ s/\bDEVICE_ATTR\s*\(\s*$var\s*,\s*\Q$perms\E\s*,\s*NULL\s*,\s*$store\s*\)/DEVICE_ATTR_WO(${var})/;
				}
			} elsif ($octal_perms eq "0644" ||
				 $octal_perms eq "0444" ||
				 $octal_perms eq "0200") {
				my $newshow = "$show";
				$newshow = "${var}_show" if ($show ne "NULL" && $show ne "${var}_show");
				my $newstore = $store;
				$newstore = "${var}_store" if ($store ne "NULL" && $store ne "${var}_store");
				my $rename = "";
				if ($show ne $newshow) {
					$rename .= " '$show' to '$newshow'";
				}
				if ($store ne $newstore) {
					$rename .= " '$store' to '$newstore'";
				}
				WARN("DEVICE_ATTR_FUNCTIONS",
				     "Consider renaming function(s)$rename\n" . $herecurr);
			} else {
				WARN("DEVICE_ATTR_PERMS",
				     "DEVICE_ATTR unusual permissions '$perms' used\n" . $herecurr);
			}
		}

# o Ignore module_param*(...) uses with a decimal 0 permission as that has a
#   specific definition of not visible in sysfs.
# o Ignore proc_create*(...) uses with a decimal 0 permission as that means
#   use the default permissions
		if ($perl_version_ok &&
				my $stat_real = get_stat_real($linenr, $lc);
					if (!($func =~ /^(?:module_param|proc_create)/ && $val eq "0") &&
					    (($val =~ /^$Int$/ && $val !~ /^$Octal$/) ||
					     ($val =~ /^$Octal$/ && length($val) ne 4))) {
		while ($line =~ m{\b($multi_mode_perms_string_search)\b}g) {
			my $oval = $1;
			my $octal = perms_to_octal($oval);
				$fixed[$fixlinenr] =~ s/\Q$oval\E/$octal/;

# check for sysctl duplicate constants
		if ($line =~ /\.extra[12]\s*=\s*&(zero|one|int_max)\b/) {
			WARN("DUPLICATED_SYSCTL_CONST",
				"duplicated sysctl range checking value '$1', consider using the shared one in include/linux/sysctl.h\n" . $herecurr);
		}
	if (!$is_patch && $filename !~ /cover-letter\.patch$/) {
	if ($is_patch && $has_commit_log && $chk_signoff) {
		if ($signoff == 0) {
			ERROR("MISSING_SIGN_OFF",
			      "Missing Signed-off-by: line(s)\n");
		} elsif (!$authorsignoff) {
			WARN("NO_AUTHOR_SIGN_OFF",
			     "Missing Signed-off-by: line by nominal patch author '$author'\n");
		}