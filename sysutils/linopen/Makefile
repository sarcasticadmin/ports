# $FreeBSD$

PORTNAME=	linopen
DISTVERSION=	0.1.0
CATEGORIES=	sysutils

MAINTAINER=	rob@sarcasticadmin.com
COMMENT=	Intelligent and suckless replacement for xdg-open

LICENSE=	WTFPL

RUN_DEPENDS=	bash:shells/bash 

NO_ARCH=	yes
NO_BUILD=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	sarcasticadmin

USES=		shebangfix
SHEBANG_FILES=	open

PLIST_FILES=	bin/open

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/open ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
