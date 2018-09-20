# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    x.sh                                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yidabdes <ussef.id@gmail.com>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/05 17:08:43 by yidabdes          #+#    #+#              #
#    Updated: 2018/09/20 17:43:32 by yidabdes         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo "
**************************************************************************
|                             * Norminette *                             |
**************************************************************************
"
find $1 -name ft_*\.c -exec norminette -R CheckForbiddenSourceHeader {} \;
find $1 -name *\.h -exec norminette -R CheckForbiddenSourceHeader {} \;
echo "
**************************************************************************
|                                   Result                               |
**************************************************************************
"

find . \( -name '.DS_Store' \) -print -delete
